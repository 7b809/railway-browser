FROM ghcr.io/linuxserver/firefox:latest

USER root

# Install nginx for auth proxy
RUN apt update && apt install -y nginx apache2-utils && apt clean

# Copy configs
COPY nginx.conf /etc/nginx/nginx.conf
COPY auth/.htpasswd /etc/nginx/.htpasswd
COPY start.sh /start.sh

RUN chmod +x /start.sh

# IMPORTANT: use different port (NOT 8080)
EXPOSE 8081

CMD ["/start.sh"]