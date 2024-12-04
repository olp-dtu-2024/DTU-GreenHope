FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Ensure ui and model directories exist
RUN mkdir -p /app/ui /app/model

EXPOSE 1234

CMD ["python", "main.py"]
