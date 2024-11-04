# Etapa de construção
FROM ubuntu:latest AS build

# Instalar dependências principais de uma vez e configurar o Flutter
RUN apt-get update && \
    apt-get install -y git curl sudo unzip libgtk-3-dev && \
    mkdir -p /development && \
    cd /development && \
    git clone https://github.com/flutter/flutter.git -b stable && \
    echo 'export PATH="$PATH:/development/flutter/bin"' >> ~/.bashrc && \
    export PATH="$PATH:/development/flutter/bin" && \
    flutter precache && \
    flutter config --enable-web && \
    flutter doctor -v

# Definir o diretório de trabalho e usuário não-root
WORKDIR /app
RUN useradd -m flutteruser && echo "flutteruser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER flutteruser

# Copiar e instalar dependências do projeto
COPY . .
RUN flutter pub get && flutter build web

# Etapa de produção
FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*

# Copiar o build para o diretório do Nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Expor a porta 8095 para acesso HTTP
EXPOSE 8095

# Iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
