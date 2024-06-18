FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm cache clean --force && rm -rf node_modules && npm install

CMD [ "node", "src/index.js" ]