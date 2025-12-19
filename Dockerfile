FROM node:20-alpine

WORKDIR /app

ENV NODE_ENV=test

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "test"]
