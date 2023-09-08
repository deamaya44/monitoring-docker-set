#!/bin/bash
#Create necessary dirs
mkdir -p prom/data
mkdir -p grafana/data
mkdir -p alertmanager/data
#Copy configuration file for alertmanager
cp alertmanager/config/alertmanager-example.yml alertmanager/config/alertmanager.yml
