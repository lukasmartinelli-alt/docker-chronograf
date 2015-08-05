# docker-chronograf

[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/lukasmartinelli/chronograf/) [![Docker Pulls](https://img.shields.io/docker/pulls/lukasmartinelli/chronograf.svg)](https://registry.hub.docker.com/u/lukasmartinelli/chronograf/)

Docker Image for InfluxDB Chronograf

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
