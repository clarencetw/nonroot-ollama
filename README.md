# nonroot-ollama

A non-root Docker image for [ollama/ollama](https://github.com/ollama/ollama), enhancing container security.

## Usage

### Pull from Docker Hub
```bash
docker pull clarencetw/ollama-nonroot:latest
```

### Run the Container
```bash
docker run -d -p 11434:11434 clarencetw/ollama-nonroot:latest
```
The service runs on 0.0.0.0:11434.

### Build Locally
```bash
docker build -t clarencetw/ollama-nonroot:latest .
```