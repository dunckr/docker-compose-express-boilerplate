# Docker-Compose Express Boilerplate

Dockerised starter example express app with opinionated commands.

## Install

```
brew install docker boot2docker docker-machine docker-compose virtualmachine
````
```
docker-machine create --driver virtualbox --virtualbox-memory 3076 dev
```
```
eval “$(docker-machine env dev)”
```

## Start

```
make start
```
```
open http://`docker-machine ip dev`
```

## Dev

```
make cli
```

## Logs

```
make status
```

## License

MIT © [Duncan Beaton](http://dunckr.com)
