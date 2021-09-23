#!/bin/bash
yum update -y
yum install wget unzip -y
wget https://dl.grafana.com/enterprise/release/grafana-enterprise-8.1.5.linux-amd64.tar.gz
tar -zxvf grafana-enterprise-8.1.5.linux-amd64.tar.gz
mv grafana-enterprise-8.1.5.linux-amd64 grafana

sudo apt-get install -y adduser libfontconfig1

sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server
sudo systemctl enable grafana-server.service
