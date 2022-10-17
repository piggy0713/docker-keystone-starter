FROM node:16-alpine

# setup workdir
WORKDIR /app

# add openssl
RUN apk upgrade && \
    apk add --no-cache openssl

COPY ./docker/start.sh /start.sh
RUN chmod +x /start.sh

