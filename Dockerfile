FROM ghcr.io/open-webui/open-webui:main

# Hugging Face mandatory port
ENV PORT=7860
EXPOSE 7860

# Re-enable RAG for your uni project (16GB RAM is plenty!)
ENV ENABLE_RAG=True
ENV WEBUI_AUTH=True

# Ensure it doesn't try to run local Ollama (saves RAM)
ENV ENABLE_OLLAMA_API=False

# Optimization
ENV ENV=prod
