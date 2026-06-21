FROM nginx:alpine

COPY rexa /usr/share/nginx/html/rexa
COPY arturo /usr/share/nginx/html/arturo
COPY divine /usr/share/nginx/html/divine
COPY doorware /usr/share/nginx/html/doorware

RUN echo '<h1>Catalogs Root</h1>' > /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
