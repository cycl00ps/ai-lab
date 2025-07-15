## Docker Compose Updates

# OpenWebUI Updates
cd /mnt/data/ai-software/docker-compose/openwebui/
docker compose pull
docker compose up --force-recreate --build -d

# Searxng Updates (Search)
cd /mnt/data/ai-software/docker-compose/searxng/
docker compose pull
docker compose up --force-recreate --build -d

#Update n8n
cd /mnt/data/ai-software/docker-compose/n8n/
docker compose pull
docker compose up --force-recreate --build -d

#Update vLLM Docker
docker pull vllm/vllm-openai:latest

## Clean-up all un-used docker layers and images
docker image prune -f

## Update llama.cpp
cd /mnt/data/ai-software/llama.cpp/
git pull
cmake -B build -DGGML_CUDA=ON
cmake --build build --config Release  -j -v

## Update whisper.cpp
cd /mnt/data/ai-software/whisper.cpp/
git pull
#cmake -B build -DGGML_CUDA=ON -D WHISPER_FFMPEG=yes
cmake -B build -DGGML_CUDA=ON
cmake --build build --config Release  -j -v