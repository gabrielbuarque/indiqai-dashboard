# Etapa de construção
FROM cirrusci/flutter:latest AS build

# Instalar sudo para permissões de usuário e outras dependências
RUN apt-get update && apt-get install -y sudo

# Criar um usuário não-root
RUN useradd -m flutteruser && echo "flutteruser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Definir o diretório de trabalho e garantir que o repositório Flutter seja confiável
WORKDIR /app
RUN git config --global --add safe.directory /sdks/flutter

# Trocar para o usuário não-root
USER flutteruser

# Habilitar o suporte à web
RUN sudo flutter config --enable-web

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
