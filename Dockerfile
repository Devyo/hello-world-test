FROM node:12

WORKDIR /app
ADD package.json /app
ARG NPM_TOKEN

RUN npm  --loglevel warn --progress=false install && \
mkdir -p /test && \
chmod -R 777 /test

ADD . /app

CMD node .