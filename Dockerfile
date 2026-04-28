FROM ghcr.io/linuxserver/firefox:latest

USER root
RUN apt update && apt install -y nginx apache2-utils && apt clean

COPY nginx.conf /etc/nginx/nginx.conf
COPY auth/.htpasswd /etc/nginx/.htpasswd
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 8080

CMD ["/start.sh"]
