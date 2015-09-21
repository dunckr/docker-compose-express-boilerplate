# Docker-Compose Express Boilerplate

Dockerised starter example express app with oppinonated commands.

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

## Dev

```
make cli
```

## Logs

```
make status
```
