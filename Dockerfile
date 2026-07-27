FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Make the test script executable
RUN chmod +x test.sh

EXPOSE 3000

CMD ["npm", "start"]