FROM python:3.11-slim


ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app


RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of your local code (instead of git cloning inside)
git clone https://github.com/Software-Solutions-Project-Repo/langchain-rag.git .

EXPOSE 8001


CMD ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001", "--workers", "1"]
