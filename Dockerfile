# Etapa de construção
FROM cirrusci/flutter:latest AS build

# Criar e usar um usuário não root
RUN adduser -D flutteruser
USER flutteruser

# Definir o diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto para o contêiner
COPY . .

# Habilitar o suporte à web
RUN flutter config --enable-web

# Obter as dependências do projeto
RUN flutter pub get

# Construir a aplicação para a web
RUN flutter build web

# Etapa de produção
FROM nginx:alpine

# Remover os arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar os arquivos construídos para o diretório de serviço do Nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Expor a porta 80 para acesso HTTP
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
