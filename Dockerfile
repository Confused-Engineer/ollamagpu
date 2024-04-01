FROM ollama/ollama

WORKDIR /usr/src
RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        nvidia-cuda-toolkit \
        curl \
    \
    && apt-get purge -y --auto-remove \
    build-essential \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 11434
ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]
