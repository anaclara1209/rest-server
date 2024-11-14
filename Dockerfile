# Imagem base do Node.js
FROM node:14

# Definindo diretório de trabalho
WORKDIR /app

# Copiando arquivos para o container
COPY package*.json ./
RUN npm install
COPY . .

# Expondo a porta que o servidor vai usar
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["node", "server.js"]

