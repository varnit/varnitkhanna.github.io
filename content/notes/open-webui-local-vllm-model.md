---
title: "Open Webui with Local vllm Model"
date: 2024-11-14T02:09:04Z
categories: 
  - "llm"
---

Run the following commands to start a local instance of vllm with **Qwen/Qwen2.5-Coder-7B-Instruct**

    docker run --runtime nvidia --gpus '"device=0"' \
      -v ~/.cache/huggingface:/root/.cache/huggingface \
      --env "HUGGING_FACE_HUB_TOKEN=<your_token>" \
      --env "CUDA_LAUNCH_BLOCKING=1" \
      -p 8000:8000 \
      --ipc=host \
      vllm/vllm-openai:latest --model Qwen/Qwen2.5-Coder-7B-Instruct --tensor-parallel-size 1 --gpu-memory-utilization 0.9

Assuming you have a NVIDIA GPU, the above command starts a docker container with vllm and downloads and run Qwen2.5-Coder-7B-Instruct on port 8000 and uses about 90% of the GPU memory.


Now, run Open WebUI in a docker container calling the above vllm instance

    docker run -d -p 3000:8080 -e OPENAI_API_BASE_URL=http://192.168.86.144:8000/v1 \
      -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main

This will launch a docker container running on port 3000 and call the local instance of vllm running on port 8001. Also, a new volume will be created or uses an existing one.

You should be able to access webui on [http://localhost:3000](http://localhost:3000/)
