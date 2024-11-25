FROM node:23-alpine

WORKDIR /usr/src/app

COPY package*.json ./
COPY hardhat.config.js ./

RUN npm install hardhat

COPY . .

EXPOSE 8545
CMD [ "npx", "hardhat", "node" ]