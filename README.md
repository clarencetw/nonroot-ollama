# nonroot-ollama

A non-root Docker image for [ollama/ollama](https://github.com/ollama/ollama), enhancing container security.

[繁體中文版本](README.zh-TW.md)

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

### Persist Models and Configuration
To persist your Ollama models and configuration, you can mount a local `.ollama` directory to the container:

```bash
docker run -d -p 11434:11434 -v $HOME/.ollama:/home/ollama/.ollama clarencetw/ollama-nonroot:latest
```

This will store all your models and configuration in your local `.ollama` directory, making them available even after the container is removed.

### Mount Custom Models Directory
If you want to use a custom directory for your models, you can mount it to the container:

```bash
docker run -d -p 11434:11434 -v /path/to/your/models:/home/ollama/.ollama/models clarencetw/ollama-nonroot:latest
```

This allows you to share models between different containers or use pre-downloaded models from your local system.