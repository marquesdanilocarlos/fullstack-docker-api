FROM node:current-alpine

#Define o diretório que a aplicação ficará dentro do container
WORKDIR /usr/src/app

#Copia o conteúdo do diretório onde está o arquivo Dockerfile para o WORKDIR
COPY . .

#Executa o comando de instalação das dependências
RUN npm install

#Executa o comando de build definido dentro do package.json
RUN npm run build

#Define a porta que permitirá ser acessada de fora do container
EXPOSE 3333

#Executa comando via terminal bash. Comandos separados por vírgula
CMD ["npm", "start"]