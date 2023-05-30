# Use uma imagem base do Node.js
FROM node:14

# Defina o diretório de trabalho na imagem
WORKDIR /usr/src/app

# Copie o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do aplicativo
RUN npm install

# Copie o restante dos arquivos do aplicativo para o diretório de trabalho
COPY . .

# Exponha a porta em que o aplicativo está ouvindo
EXPOSE 3000

# Inicie o aplicativo
CMD ["npm", "start"]