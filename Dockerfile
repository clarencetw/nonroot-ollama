FROM ollama/ollama:${OLLAMA_VERSION:-latest}
USER root

RUN groupadd -g 1001 ollama && \
    useradd -m -u 1001 -g ollama -s /bin/bash ollama && \
    mkdir -p /home/ollama/.ollama && \
    chown -R ollama:ollama /usr/bin/ollama /usr/lib/ollama /home/ollama/.ollama

ENV HOME=/home/ollama
USER ollama

CMD ["serve"]
