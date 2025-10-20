FROM python:3.13-slim-bullseye
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /api
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y \
    gunicorn \
    swi-prolog \
 && rm -rf /var/lib/apt/lists/*

COPY . .
COPY prolog /api/prolog

EXPOSE 5010
CMD ["python", "-m", "gunicorn",  "-k",  "uvicorn.workers.UvicornWorker", "main:app", "--bind",  "0.0.0.0:5010", "--workers", "4"]