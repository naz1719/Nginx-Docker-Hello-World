# docker build --tag=nkhimin/nginx_hello_world:v1 . --file=Dockerfile
# docker run -p 8080:80 -d nkhimin/nginx_hello_world:v1

FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD helloworld.conf /etc/nginx/conf.d/
ADD nginx.png /usr/share/nginx/html/
ADD index.html /usr/share/nginx/html/