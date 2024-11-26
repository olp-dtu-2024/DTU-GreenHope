import base64
import re
from os import system
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
import cv2
import sys
import typing
import numpy as np

from inferenceModel import OnnxInferenceModel
from text_utils import ctc_decoder
from fastapi import FastAPI, Request
from fastapi.staticfiles import StaticFiles


app = FastAPI(title="main app")
templates = Jinja2Templates(directory=sys.path[0] + "\\ui")
system("title " + "Decaptcha")


@app.get("/", response_class=HTMLResponse)
async def home(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})


@app.post("/resolver")
async def decaptcha(request: Request):
    content = await request.body()
    content = byteToStr(content)
    base64body = regex(content + "&", "body=(.*?)&")
    if not base64body:
        return {"msg": "no_base64"}
    base64body = unquote(base64body)
    if ";base64," in base64body:
        base64body = regex(base64body, ';base64,(.*)')
    return runbase64(base64body)


def runbase64(base64body):
    image_bytes = base64.b64decode(base64body)
    nparr = np.frombuffer(image_bytes, np.uint8)
    image = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
    height, width, _ = image.shape
    widthheight = f"{width}_{height}"
    resize = False
    if widthheight in models:
        model = models[widthheight]
        prediction_text = model.predict(image, resize)
        if widthheight == "160_60":
            prediction_text = prediction_text.split("=")[0]
            prediction_text = prediction_text.replace("c", "/")
            prediction_text = prediction_text.replace("x", "*")
            prediction_text = f"round({prediction_text})"
            prediction_text = str(eval(prediction_text))
        return HTMLResponse(content="OK|" + prediction_text)
    return HTMLResponse(content=f"FAIL|Chưa hỗ trợ {width} {height}")


class ImageToWordModel(OnnxInferenceModel):
    def __init__(self, char_list: typing.Union[str, list], *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.char_list = char_list

    def predict(self, image: np.ndarray, resize=False):
        if resize:
            image = cv2.resize(image, self.input_shape[:2][::-1])
        image_pred = np.expand_dims(image, axis=0).astype(np.float32)
        preds = self.model.run(None, {self.input_name: image_pred})[0]
        text = ctc_decoder(preds, self.char_list)[0]
        return text


def byteToStr(byte, decode="utf-8"):
    return byte.decode(decode, errors="ignore")


def regex(html, reg, flags=re.MULTILINE):
    if not html:
        return ""
    regex = reg
    test_str = html
    matches = re.finditer(regex, test_str, flags)
    for matchNum, match in enumerate(matches, start=1):
        for groupNum in range(0, len(match.groups())):
            groupNum = groupNum + 1
            z = match.group(groupNum)
            return z
    return ""


models = {}
if __name__ == "__main__":
    from urllib.parse import unquote
    from configs import BaseModelConfigs
    import sys
    import os
    folder = sys.path[0] + "/model/"
    folders = [x[0] for x in os.walk(folder)]
    folders.remove(folder)
    for folder in folders:
        configs = BaseModelConfigs.load(folder + "/configs.yaml")
        model = ImageToWordModel(model_path=folder, char_list=configs.vocab)
        models[str(configs.width)+"_" + str(configs.height)] = model
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=1234)
