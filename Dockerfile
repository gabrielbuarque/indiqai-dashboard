# Etapa de construção
FROM ubuntu:latest AS build

# Instalar dependências principais e sudo para permissões de usuário
RUN apt-get update && \
    apt-get install -y git curl cmake meson make clang libgtk-3-dev pkg-config sudo

# Criar diretório de desenvolvimento e clonar o Flutter
RUN mkdir -p /development && \
    cd /development && \
    git clone https://github.com/flutter/flutter.git -b stable

# Adicionar o Flutter ao PATH
ENV PATH="/development/flutter/bin:$PATH"

# Instalar as dependências do Flutter e configurar para web
RUN flutter precache && \
    flutter config --enable-web && \
    flutter doctor -v

# Criar um usuário não-root
RUN useradd -m flutteruser && echo "flutteruser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Definir o diretório de trabalho e garantir que o repositório Flutter seja confiável
WORKDIR /app
RUN git config --global --add safe.directory /development/flutter

# Trocar para o usuário não-root
USER flutteruser

# Copiar os arquivos do projeto para o contêiner
COPY . .

# Obter as dependências do projeto
RUN flutter pub get

# Construir a aplicação para a web
RUN flutter build web

# Etapa de produção
FROM nginx:alpine

# Remover arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar os arquivos construídos para o diretório de serviço do Nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Expor a porta 80 para acesso HTTP
EXPOSE 8095

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
