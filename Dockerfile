# Use a imagem oficial do Dart para compilação
FROM dart:latest AS build

# Defina o diretório de trabalho
WORKDIR /app

# Copie e instale as dependências
COPY pubspec.* ./
RUN dart pub get

# Copie o restante do aplicativo e construa
COPY . .
RUN dart pub get --offline
RUN dart run build_runner build

# Use a imagem base distroless do Google para a imagem final
FROM gcr.io/distroless/base

# Copie a compilação do estágio de build
COPY --from=build /app/build /app

# Defina o comando padrão para executar o aplicativo Flutter
CMD ["/app/"]
