# 🧠 Debian 12 + Docker + NVIDIA RTX 4070 + Ollama Setup

This project provides a complete step-by-step guide for setting up a GPU-accelerated AI environment using:

- 🐧 Debian 12
- 🐳 Docker & Docker Compose
- ⚙️ NVIDIA RTX 4070 (with full CUDA support)
- 🤖 [Ollama](https://ollama.com) AI model runner

The configuration supports FastAPI-based AI backends and is suitable for self-hosted solutions using Traefik, Redis, and GPU inference acceleration.

## 📚 Contents

- 🧩 GPU Driver + CUDA installation
- 🐳 Docker & NVIDIA Container Toolkit
- 🔧 Docker Compose setup for Ollama
- 🔁 Integration with AI microservices (FastAPI, Redis)
- 🧪 Verification and testing steps
- 🚧 Troubleshooting

## 📄 Full Documentation (PDF)

- 🇺🇸 [Download English PDF](pdf/Debian12-Docker-AI-GPU-Ollama-EN.pdf)
- 🇭🇺 [Letöltés magyar nyelvű PDF](pdf/Debian12-Docker-AI-GPU-Ollama-HU.pdf)

## 📂 Folder Structure

```bash
/mnt/raid/docker/
├── traefik/           # Reverse proxy
├── webstack/          # PHP+MariaDB sites
├── ai/                # AI backend (FastAPI + Ollama)
├── monitoring/        # Grafana + Prometheus
├── nginx/
├── php/
├── mariadb/
├── phpmyadmin/
└── tools/             # Watchtower, backup, CI/CD
