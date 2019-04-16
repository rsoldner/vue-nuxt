FROM node:latest

ENV APP_ROOT /src

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}
ADD . ${APP_ROOT}

COPY npmrc /root/.npmrc

RUN npm install

ENV HOST 0.0.0.0
