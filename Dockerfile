# Stage 1: install dependencies
FROM node:24.19.0-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev

# Stage 2: minimal runtime image, no npm CLI included
FROM node:24.19.0-alpine
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY . .
RUN chmod +x test.sh
EXPOSE 3000
CMD ["node", "app.js"]