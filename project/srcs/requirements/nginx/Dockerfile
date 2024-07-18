FROM debian:buster
RUN apt update -y && apt install nginx -y
COPY ./conf/nginx_config /etc/nginx/sites-available/default
ENTRYPOINT ["nginx", "-g", "daemon off;"]