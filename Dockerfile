FROM cirrusci/flutter:latest

# Instalar Dart SDK na versão necessária
RUN apt-get update && apt-get install -y curl \
    && curl -sSL https://dl.google.com/dl/linux/direct/dart_3.0.0-1_amd64.deb -o dart.deb \
    && dpkg -i dart.deb

# Continue com o setup do Flutter
WORKDIR /app
COPY pubspec.yaml /app/pubspec.yaml
RUN flutter pub get

COPY . /app
RUN flutter build web
