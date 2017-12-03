# docker-chronograf

![stability-deprecated](https://img.shields.io/badge/stability-deprecated-red.svg) [![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/lukasmartinelli/chronograf/) [![Docker Pulls](https://img.shields.io/docker/pulls/lukasmartinelli/chronograf.svg)](https://registry.hub.docker.com/u/lukasmartinelli/chronograf/)

> :warning: This repository is no longer maintained by Lukas Martinelli.

Docker Image for [InfluxDB Chronograf](https://influxdb.com/chronograf/index.html).

![Chronograf Screenshot](https://influxdb.com/img/blog/chronograf.gif)

## Run

```
docker run -t lukasmartinelli/chronograf
```

## Configuration

| Environment Variable    | Description                                               
|-------------------------|------------------------------------------------------
| `INFLUXDB_PROTO`        | InfluxDB logging protocol (default `http`)
| `INFLUXDB_HOST`         | InfluxDB host (default `localhost`)
| `INFLUXDB_PORT`         | InfluxDB port (default `8086`)

## Tags

- 0.1.0
- latest
