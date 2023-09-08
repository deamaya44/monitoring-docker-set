#!/bin/bash
# #Prometheus directory bind-mount volume config
# docker run -d \
#     -p 9090:9090 \
#     --name prom \
#     --network monitoring \
#     -v config-prom:/etc/prometheus \
#     -v prometheus-data:/prometheus \
#     prom/prometheus

#Docker network for this lab
docker network create monitoring

#Prometheus file bind-volume config
docker run -d \
    -p 9090:9090 \
    --name prom \
    --network monitoring \
    -v ./prom/config/prometheus.yml:/etc/prometheus/prometheus.yml \
    -v ./prom/data/prometheus-data:/prometheus \
    prom/prometheus

#Grafana config
docker run -d \
    -p 3000:3000 \
    --name grafana \
    --network monitoring \
    -v ./grafana/data:/var/lib/grafana \
    grafana/grafana
    # --user "$(id -u)" 

#Alert Manager config
docker run -d \
    -p 9093:9093 \
    --name alertman \
    --network monitoring \
    -v ./alertmanager/config:/config \
    -v ./alertmanager/data:/data \
    prom/alertmanager \
    --config.file=/config/alertmanager.yml --log.level=debug
    # --user "$(id -u)" 