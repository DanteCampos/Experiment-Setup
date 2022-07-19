#!/bin/bash

# Instalando o My5G-RANTester-Docker
sudo git clone https://github.com/my5G/my5G-RANTester-docker
cd my5G-RANTester-docker
sudo make
sudo docker-compose up -d
cd ..
