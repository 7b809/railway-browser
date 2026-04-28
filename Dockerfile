FROM ghcr.io/linuxserver/firefox:latest

# Railway expects one exposed port (internal UI runs on 3000)
EXPOSE 3000