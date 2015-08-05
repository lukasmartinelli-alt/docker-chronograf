FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive
ENV CHRONOGRAF_VERSION 0.1.0

RUN apt-get update && apt-get install -y wget
RUN wget https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_${CHRONOGRAF_VERSION}_amd64.deb
RUN dpkg -i chronograf_0.1.0_amd64.deb && rm chronograf_0.1.0_amd64.deb

COPY run.sh /run.sh
RUN chmod +x /run.sh

ENV INFLUXDB_PROTO=http
ENV INFLUXDB_HOST=localhost
ENV INFLUXDB_PORT=8086

EXPOSE 80
CMD [ "/run.sh" ]
