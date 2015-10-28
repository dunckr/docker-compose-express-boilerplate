# Docker-Compose Express Boilerplate

Dockerised starter example express app with opinionated commands.

## Install

```sh
brew install docker boot2docker docker-machine docker-compose virtualmachine
docker-machine create --driver virtualbox --virtualbox-memory 3076 dev
docker-machine start dev
eval "$(docker-machine env dev)"
```

## Start

```sh
make build
make start
open http://`docker-machine ip dev`
```

## Logs

```sh
make status
```

## Test

```sh
make cli
npm run test
```

## License

MIT © [Duncan Beaton](http://dunckr.com)
