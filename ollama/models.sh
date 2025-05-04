# bash script that runs commands in ollama container to download models

# log into docker container
docker exec -it ollama bash

# download models
## LLMs
# ollama pull llama3.2:1b
# ollama pull gemma3:1b
ollama pull deepseek-r1:1.5b

## Multi-Modal
# ollama pull gemma3:4b

## Embeddings
ollama pull nomic-embed-text:latest
ollama pull mxbai-embed-large:latest

## Vision
ollama pull granite3.2-vision:2b

# ## Audio Generation
# ollama pull so-vits-svc:latest

# List all models
# ollama list

# exit docker container
exit

