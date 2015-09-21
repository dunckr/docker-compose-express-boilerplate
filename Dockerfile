FROM node:0.10.36

RUN apt-get update 

RUN npm install nodemon -g

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /app && cp -a /tmp/node_modules /app/

ADD . /app
WORKDIR /app

ENV PORT 80
EXPOSE 80

CMD npm start
