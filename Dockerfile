# Etapa de build para compilar a aplicação Flutter para a web
FROM cirrusci/flutter:stable AS build
WORKDIR /app

# Copiar os arquivos do projeto para o contêiner
COPY . .

# Habilitar o suporte à web no Flutter e construir a aplicação
RUN flutter config --enable-web && flutter build web

# Etapa final para configurar o servidor Nginx
FROM nginx:alpine

# Limpar o diretório padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar os arquivos construídos para o diretório de serviço do Nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Expor a porta 80 para o servidor Nginx
EXPOSE 80

# Comando de entrada para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
