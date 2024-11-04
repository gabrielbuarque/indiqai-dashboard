# Usar a imagem base do Flutter
RUN flutter build web
FROM cirrusci/flutter:latest

# Adicionar o repositório do Dart
RUN apt-get update && apt-get install -y gnupg \
    && curl -sS https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" > /etc/apt/sources.list.d/dart_stable.list' \
    && apt-get update && apt-get install -y dart

# Configurar o diretório de trabalho
WORKDIR /app

# Copiar o pubspec.yaml e instalar dependências
COPY pubspec.yaml /app/pubspec.yaml
RUN flutter pub get

# Copiar o restante dos arquivos e realizar o build
COPY . /app
RUN flutter build web
