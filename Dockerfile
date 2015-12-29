FROM debian:jessie

# Override with e.g. $ docker build --build-arg CHRONOGRAF_VERSION=1.2.3
ARG CHRONOGRAF_VERSION=0.4.0

RUN apt-get update && apt-get install -y wget
RUN wget https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_${CHRONOGRAF_VERSION}_amd64.deb
RUN dpkg -i chronograf_${CHRONOGRAF_VERSION}_amd64.deb && rm chronograf_${CHRONOGRAF_VERSION}_amd64.deb

COPY run.sh /run.sh
RUN chmod +x /run.sh

ENV INFLUXDB_PROTO=http
ENV INFLUXDB_HOST=localhost
ENV INFLUXDB_PORT=8086

EXPOSE 80
CMD [ "/run.sh" ]
