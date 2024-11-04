# Adicionar o repositório do Dart
RUN apt-get update && apt-get install -y gnupg \
    && curl -sS https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" > /etc/apt/sources.list.d/dart_stable.list' \
    && apt-get update && apt-get install -y dart

# Configurar o ambiente e prosseguir com o build do Flutter
WORKDIR /app
COPY pubspec.yaml /app/pubspec.yaml
RUN flutter pub get

COPY . /app
RUN flutter build web
