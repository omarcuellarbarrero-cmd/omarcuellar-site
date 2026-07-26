# Etapa 1: Build con Node.js
FROM node:22-alpine AS builder

WORKDIR /app

# Copiar package.json primero para aprovechar cache de Docker
COPY package.json ./
RUN npm install

# Copiar el resto del código
COPY . .

# Compilar Astro (genera carpeta dist/)
RUN node ./node_modules/astro/astro.js build

# Etapa 2: Servir con Nginx (solo archivos estáticos)
FROM nginx:alpine

# Copiar el build estático al directorio de Nginx
COPY --from=builder /app/dist /usr/share/nginx/html

# Configuración simple de Nginx
RUN echo 'server {     listen 80;     server_name localhost;     root /usr/share/nginx/html;     index index.html;     location / {         try_files $uri $uri/ /index.html;     }     gzip on;     gzip_types text/css application/javascript application/json text/html; }' > /etc/nginx/conf.d/default.conf

EXPOSE 80
