#!/bin/bash
exec /opt/chronograf/chronograf -bind=0.0.0.0:80 -influx=$INFLUXDB_PROTO://$INFLUXDB_HOST:$INFLUXDB_PORT
