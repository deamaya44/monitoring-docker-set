#Create necessary dirs
mkdir -p prom/{config,data}
mkdir -p grafana/data
mkdir -p alertmanager/{config,data}
#Copy configuration file for alertmanager
cp alertmanager/config/alertmanager-example.yml alertmanager/config/alertmanager.yml
#Run the containers
bash docker-container.sh