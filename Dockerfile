FROM node:8.11.1-alpine
LABEL maintainer osvaldo.tulini@gmail.com

ENV ANGULAR_CLI_VERSION 6.0.0

RUN chown -R node:node /usr/local/lib/node_modules \
    && chown -R node:node /usr/local/bin

USER node

RUN npm install -g @angular/cli@${ANGULAR_CLI_VERSION} && \
    ng set --global packageManager=yarn

USER root


