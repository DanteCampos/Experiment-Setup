#!/bin/bash

# Instalando o GTP5G
sudo git clone https://github.com/free5gc/gtp5g
cd gtp5g
sudo make clean && sudo make
sudo make install
cd ..
