# Etapa de construção usando a imagem Flutter mais recente
FROM ghcr.io/cirruslabs/flutter:latest AS build

# Definir o diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto para o contêiner
COPY . .

# Habilitar o suporte à web e instalar dependências
RUN flutter config --enable-web && \
    flutter pub get && \
    flutter build web

# Etapa de produção
FROM nginx:alpine

# Remover arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar o build do Flutter para o diretório de serviço do Nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Expor a porta 8095 para o Nginx
EXPOSE 8095

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]