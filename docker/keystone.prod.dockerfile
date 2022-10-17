FROM node:16-alpine

# setup workdir
WORKDIR /app

# add openssl
RUN apk upgrade && \
    apk add --no-cache openssl

# copy app to container
COPY ./keystone /app

# build app
RUN yarn install && \
    yarn build
