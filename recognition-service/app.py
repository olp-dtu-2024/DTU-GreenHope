from fastapi import FastAPI, File, UploadFile
from fastapi.responses import StreamingResponse
import cv2
import numpy as np
from ultralytics import YOLO
import uvicorn
from typing import Union
import io
from fastapi import HTTPException
import tempfile
from fastapi import Request
from fastapi.templating import Jinja2Templates

app = FastAPI()

templates = Jinja2Templates(directory="templates")

model = YOLO('yolo11n.pt')


def process_frame(frame):
    """Process a single frame with YOLO detection"""
    results = model(frame)
    return results[0].plot()


@app.get("/")
def read_root():
    return {"message": "Welcome to YOLO Detection API"}


@app.post("/detect/image")
async def detect_image(file: UploadFile = File(...)):
    """Endpoint for detecting objects in a single image"""
    contents = await file.read()
    nparr = np.frombuffer(contents, np.uint8)
    img = cv2.imdecode(nparr, cv2.IMREAD_COLOR)

    annotated_frame = process_frame(img)

    _, encoded_img = cv2.imencode('.jpg', annotated_frame)
    return StreamingResponse(io.BytesIO(encoded_img.tobytes()), media_type="image/jpeg")


@app.post("/detect/stream")
async def detect_stream(file: UploadFile = File(...)):
    """Endpoint for processing video streams"""
    try:
        contents = await file.read()
        nparr = np.frombuffer(contents, np.uint8)
        img = cv2.imdecode(nparr, cv2.IMREAD_COLOR)

        if img is None:
            raise HTTPException(status_code=400, detail="Invalid image data")

        annotated_frame = process_frame(img)

        _, buffer = cv2.imencode('.jpg', annotated_frame)
        return StreamingResponse(io.BytesIO(buffer.tobytes()), media_type="image/jpeg")

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


@app.get("/detect/stream/video")
async def detect_stream_video(request: Request):
    """Endpoint for serving video streaming page"""
    return templates.TemplateResponse(
        "stream.html",
        {"request": request}
    )


@app.post("/detect/stream/video/process")
async def process_stream_video(file: UploadFile = File(...)):
    """Endpoint for processing video frames"""
    try:
        contents = await file.read()
        nparr = np.frombuffer(contents, np.uint8)
        img = cv2.imdecode(nparr, cv2.IMREAD_COLOR)

        if img is None:
            raise HTTPException(status_code=400, detail="Invalid image data")

        annotated_frame = process_frame(img)

        _, buffer = cv2.imencode('.jpg', annotated_frame)
        return StreamingResponse(io.BytesIO(buffer.tobytes()), media_type="image/jpeg")

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


@app.post("/detect/video")
async def detect_video(file: UploadFile = File(...)):
    """Process an uploaded video file"""
    try:
        with tempfile.NamedTemporaryFile(delete=False, suffix=".mp4") as temp_video:
            temp_video.write(await file.read())
            temp_video_path = temp_video.name

        cap = cv2.VideoCapture(temp_video_path)

        width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
        height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
        fps = int(cap.get(cv2.CAP_PROP_FPS))
        total_frames = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))

        output_path = temp_video_path.replace('.mp4', '_processed.mp4')

        if cv2.VideoWriter_fourcc(*'avc1') is not None:
            fourcc = cv2.VideoWriter_fourcc(*'avc1')
        else:
            fourcc = cv2.VideoWriter_fourcc(*'mp4v')

        out = cv2.VideoWriter(
            output_path,
            fourcc,
            fps,
            (width, height)
        )

        frame_count = 0
        while cap.isOpened():
            ret, frame = cap.read()
            if not ret:
                break

            annotated_frame = process_frame(frame)
            out.write(annotated_frame)

            frame_count += 1
            progress = (frame_count / total_frames) * 100
            print(f"Processing: {progress:.2f}%")

        cap.release()
        out.release()

        try:
            import subprocess
            final_output = output_path.replace('.mp4', '_final.mp4')
            subprocess.run([
                'ffmpeg', '-i', output_path,
                '-c:v', 'libx264',
                '-preset', 'medium',
                '-crf', '23',
                '-y',
                final_output
            ], check=True)

            return StreamingResponse(
                open(final_output, 'rb'),
                media_type="video/mp4",
                headers={
                    "Content-Disposition": f"attachment; filename=processed_video.mp4"
                }
            )
        except Exception as e:
            print(f"FFmpeg conversion failed: {e}")
            return StreamingResponse(
                open(output_path, 'rb'),
                media_type="video/mp4",
                headers={
                    "Content-Disposition": f"attachment; filename=processed_video.mp4"
                }
            )

    except Exception as e:
        print(f"Error processing video: {e}")
        return {"error": str(e)}

    finally:
        try:
            import os
            if os.path.exists(temp_video_path):
                os.remove(temp_video_path)
            if os.path.exists(output_path):
                os.remove(output_path)
            if 'final_output' in locals() and os.path.exists(final_output):
                os.remove(final_output)
        except Exception as e:
            print(f"Error cleaning up temporary files: {e}")

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
