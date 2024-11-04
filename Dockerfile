# Etapa 1: Construir a aplicação Flutter Web
FROM cirrusci/flutter:stable AS build
FROM dart:3.0.0


# Definir o diretório de trabalho
WORKDIR /web

# Copiar os arquivos do projeto para o contêiner
COPY . .

# Habilitar o suporte ao Flutter Web
RUN flutter config --enable-web

# Obter as dependências do projeto
RUN flutter pub get

# Construir a aplicação para a web
RUN flutter build web --release

# Etapa 2: Servir a aplicação usando o Nginx
FROM nginx:alpine

# Remover a configuração padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar os arquivos construídos para o diretório de serviço do Nginx
COPY --from=build /web /usr/share/nginx/html

# Expor a porta 80 para acesso HTTP
EXPOSE 8095

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
