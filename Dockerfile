# Use uma imagem base que já tenha o Flutter instalado ou instale-o manualmente
FROM cirrusci/flutter:latest

WORKDIR /app

# Copiar o pubspec.yaml e rodar flutter pub get para instalar dependências
COPY pubspec.yaml /app/pubspec.yaml
RUN flutter pub get

# Copiar o restante dos arquivos e rodar o build
COPY . /app
RUN flutter build web

# Definir o comando de início para servir o aplicativo
CMD npx serve -s build/web -l 8095
