FROM node:24.19.0-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN chmod +x test.sh

EXPOSE 3000

CMD ["npm", "start"]