FROM node:7.2-slim

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt-get update && \
  apt-get install -y --no-install-recommends \
	yarn && \
  yarn global add nodemon

COPY package.json yarn.* /tmp/
WORKDIR /tmp
RUN yarn install

ENV app /app

RUN mkdir $app
RUN cp -a /tmp/node_modules $app

WORKDIR $app
ADD . $app
