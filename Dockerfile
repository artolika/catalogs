# Dockerfile
FROM nginx:alpine

COPY rexa /usr/share/nginx/html/rexa
COPY arturo /usr/share/nginx/html/arturo
COPY artolika /usr/share/nginx/html/artolika
COPY doorware /usr/share/nginx/html/doorware

# Optional: add a default index
RUN echo '<h1>Catalogs Root</h1>' > /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
