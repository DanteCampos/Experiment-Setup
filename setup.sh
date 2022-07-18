#!/bin/bash

# Algumas dependências
sudo apt-get update
sudo apt-get install git make gcc gpp

# Organizando uma pasta para o experimento
sudo mkdir experiment
cd experiment

# Dependências para instalar o Docker Engine
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Organizando o SO para instalar o Docker Engine
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Instalando o Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Instalando o Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Instalando o GTP5G
git clone https://github.com/free5gc/gtp5g
cd gtp5g
sudo make clean && sudo make
sudo make install
cd ..

# Instalando o Free5GC-Compose
git clone https://github.com/free5gc/free5gc-compose.git
cd free5gc-compose
make base
docker-compose build
sudo docker-compose up -d
cd ..

# Instalando o My5G-RANTester-Docker
git clone https://github.com/my5G/my5G-RANTester-docker
cd my5G-RANTester-docker
sudo make
sudo docker-compose up -d
cd ..
