# Ollama with Cloudflare Tunnel

Run Ollama AI models locally with remote access via Cloudflare tunnels.

## Prerequisites

- [Docker Compose](https://docs.docker.com/compose/install/)

## Services

- **ollama**: AI model server with GPU support (port 11434)
- **ollama-tunnel**: Secure Cloudflare tunnel for remote access

## Setup

1. Edit `cloudflared/config.yml` with your tunnel UUID and hostname
2. Run `docker compose up -d`
3. Access locally at `http://localhost:11434` or remotely via Cloudflare
4. Check tunnel status: `docker compose logs ollama-tunnel`

## Installing Models

```bash
# Start containers then run:
bash ollama/models.sh
```

### Available Models
- **LLMs**: llama3.2:1b, gemma3:1b, deepseek-r1:1.5b
- **Embeddings**: nomic-embed-text, mxbai-embed-large
- **Vision**: granite3.2-vision:2b

### Customization
- Edit `ollama/models.sh` to add/remove models
- Uncomment models in the script to enable them
- View installed models by uncommenting `ollama list` in the script

## License

This project is licensed under the [MIT License](LICENSE).

