FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

COPY . .

EXPOSE 8000

CMD ["python", "app.py"]
# docker build -t facenet-attendance-system .
# docker run -it -p 8000:8000 facenet-attendance-system