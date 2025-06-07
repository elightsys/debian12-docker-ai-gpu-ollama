# 🧠 Debian 12 + Docker + NVIDIA RTX 4070 + Ollama Beállítás

Ez a projekt bemutatja, hogyan lehet saját AI infrastruktúrát kiépíteni Debian 12 alatt Docker segítségével, RTX 4070 GPU gyorsítással és Ollama modellek futtatásával.

- 🐧 Debian 12
- 🐳 Docker & Docker Compose
- ⚙️ NVIDIA RTX 4070 (with full CUDA support)
- 🤖 [Ollama](https://ollama.com) AI model futattás

## 📚 Tartalom

- 🧩 GPU Driver + CUDA installation
- 🐳 Docker & NVIDIA Container Toolkit
- 🔧 Docker Compose setup for Ollama
- 🔁 Integration with AI microservices (FastAPI, Redis)
- 🧪 Verification and testing steps
- 🚧 Troubleshooting

## 📂 Mappa szerkezet

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
```

A minta struktúra megtalálható a `docker/` könyvtárban, külön AI, monitoring, PHP-FPM, MariaDB, NGINX konténerekkel.

## ℹ️ Egyéb

Ez a dokumentáció referencia a saját GPT-alapú rendszerek beállításához, különösen akkor hasznos, ha GPU-gyorsításra van szükség Ollama modelleknél.

## 📜 Licenc

MIT License
