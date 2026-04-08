FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH

RUN useradd -m -u 1000 user
WORKDIR $HOME/app


USER root
RUN apt-get update && apt-get install -y git build-essential && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/Software-Solutions-Project-Repo/langchain-rag.git .


RUN chown -R user:user $HOME/app
USER user

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 7860

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7860"]
