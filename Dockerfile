# Etapa de construção
FROM cirrusci/flutter:latest AS build

# Instalar o sudo para criar e alternar para um usuário não root
RUN apt-get update && apt-get install -y sudo

# Criar um usuário não root chamado 'flutteruser'
RUN useradd -m flutteruser && echo "flutteruser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Trocar para o usuário não root
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
