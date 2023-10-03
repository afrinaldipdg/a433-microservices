#!/bin/bash
# Perintah untuk membuat Docker image dari Dockerfile dengan nama item-app dan tag latest
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/afrinaldipdg/item-app:v1

# login ke Github Registry
cat ~/token.txt | docker login --username afrinaldipdg --password-stdin ghcr.io

# Mengunggah Image ke Github container Registry
docker push ghcr.io/afrinaldipdg/item-app:v1
