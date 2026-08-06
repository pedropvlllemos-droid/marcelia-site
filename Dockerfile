FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html favicon.svg marcelia.webp marcelia.jpg og.jpg apple-touch-icon.png /usr/share/nginx/html/

EXPOSE 80
