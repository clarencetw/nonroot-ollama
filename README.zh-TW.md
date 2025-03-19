# nonroot-ollama

這是一個基於 [ollama/ollama](https://github.com/ollama/ollama) 的非 root 權限 Docker 映像檔，增強了容器安全性。

## 使用方式

### 從 Docker Hub 拉取
```bash
docker pull clarencetw/ollama-nonroot:latest
```

### 運行容器
```bash
docker run -d -p 11434:11434 clarencetw/ollama-nonroot:latest
```
服務將在 0.0.0.0:11434 運行。

### 本地建置
```bash
docker build -t clarencetw/ollama-nonroot:latest .
```

### 持久化模型和配置
要持久化您的 Ollama 模型和配置，您可以將本地的 `.ollama` 目錄掛載到容器中：

```bash
docker run -d -p 11434:11434 -v $HOME/.ollama:/home/ollama/.ollama clarencetw/ollama-nonroot:latest
```

這將把所有模型和配置存儲在您本地的 `.ollama` 目錄中，即使容器被移除後，這些資料仍然可用。

### 掛載自定義模型目錄
如果您想要使用自定義目錄來存放模型，您可以將該目錄掛載到容器中：

```bash
docker run -d -p 11434:11434 -v /path/to/your/models:/home/ollama/.ollama/models clarencetw/ollama-nonroot:latest
```

這樣可以讓您在不同容器之間共享模型，或使用本地系統中預先下載的模型。

[English Version](README.md) 