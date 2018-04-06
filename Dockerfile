FROM node:8.11.1-alpine
LABEL maintainer osvaldo.tulini@gmail.com

ENV ANGULAR_CLI_VERSION 1.7.4
RUN npm install -g @angular/cli@${ANGULAR_CLI_VERSION} && \
    ng set --global packageManager=npm





