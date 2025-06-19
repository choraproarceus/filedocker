# Usa Ubuntu como base
FROM ubuntu:22.04

# Evita prompts interativos
ENV DEBIAN_FRONTEND=noninteractive

# Instala curl e git (caso queira fazer checkout no futuro)
RUN apt-get update && \
    apt-get install -y curl git ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Diretório de trabalho
WORKDIR /app

# Executa o mesmo comando que você usa no GitHub Actions
CMD curl -sSf https://sshx.io/get | sh -s run
