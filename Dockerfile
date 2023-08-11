FROM node:18-alpine as builder
WORKDIR '/app'
COPY package*.json ./
RUN npm install --verbose
COPY . .
RUN npm run build

FROM nginx:1.25.1
COPY --from=builder /app/dist /usr/share/nginx/html