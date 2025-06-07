# /mnt/raid/docker/ai/Dockerfile
FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://ollama.com/install.sh | sh

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app /app

# Nem-root felhasználó létrehozása és könyvtárak előkészítése
#RUN groupadd -r appuser && useradd -r -g appuser appuser
#RUN mkdir -p /app/data /app/logs /app/faiss_db
#RUN chown -R appuser:appuser /app
#USER appuser

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:5000/ping || exit 1

CMD ["uvicorn", "ai_fastapi:app", "--host", "0.0.0.0", "--port", "5000"]