FROM node:5.3

RUN apt-get update && \
  npm install nodemon -g

COPY package.json npm-shrinkwrap.* /tmp/
WORKDIR /tmp
RUN npm install

ENV app /app

RUN mkdir $app
RUN cp -a /tmp/node_modules $app

WORKDIR $app
ADD . $app
