# Stage 1: install dependencies
FROM node:24.19.0-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev

# Stage 2: minimal runtime image
FROM node:24.19.0-alpine
WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY . .
RUN chmod +x test.sh && \
    rm -rf /usr/local/lib/node_modules/npm /usr/local/bin/npm /usr/local/bin/npx /opt/yarn-v1.22.22
EXPOSE 3000
CMD ["node", "app.js"]