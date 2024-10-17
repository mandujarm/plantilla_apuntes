# Usa a imaxe de Hugo
FROM klakegg/hugo:ext-alpine

# Establece o directorio de traballo
WORKDIR /app

# Copia todos os arquivos do proxecto
COPY . .

# Executa o comando de compilación de Hugo
RUN hugo

# Establece o directorio onde se atopará o sitio compilado
CMD ["hugo", "serve", "--bind", "0.0.0.0", "--port", "3000"]
