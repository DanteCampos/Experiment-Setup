#!/bin/bash

# Instalando o Free5GC-Compose
sudo git clone https://github.com/free5gc/free5gc-compose.git
cd free5gc-compose
sudo make base
sudo docker-compose build
cd ..
