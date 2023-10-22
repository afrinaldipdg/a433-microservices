#!/bin/bash

# Nama Docker image yang akan dibuild
IMAGE_NAME=ghcr.io/afrinaldipdg/karsajobs:latest

# Build Docker image dari Dockerfile yang ada di direktori saat ini
docker build -t $IMAGE_NAME .

# login ke Github Registry
cat ~/token.txt | docker login --username afrinaldipdg --password-stdin ghcr.io

# Mengunggah Image ke Github container Registry
docker push ghcr.io/afrinaldipdg/karsajobs:latest
