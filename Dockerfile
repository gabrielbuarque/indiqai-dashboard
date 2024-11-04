# Use a imagem oficial do Dart para compilação
FROM dart:stable AS build

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos de configuração e instale as dependências
COPY pubspec.* ./
RUN dart pub get

# Copie o restante do código do aplicativo
COPY . .

# Compile o aplicativo Flutter para a web
RUN flutter build web

# Use uma imagem base leve para servir o aplicativo
FROM nginx:alpine
COPY --from=build /app/build/web /usr/share/nginx/html

# Exponha a porta 80 para o servidor web
EXPOSE 8095

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
