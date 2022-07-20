# Experiment-Setup
Bashs para automatizar a instalação de ferramentas necessárias para realizar experimentos de RAN
com [My5G-RANTester-Compose](https://github.com/my5G/my5G-RANTester-docker) e
[Free5GC-Compose](https://github.com/free5gc/free5gc-compose).


### Instalações utilizadas:
* [Docker Engine](https://docs.docker.com/engine/install/ubuntu/)
* [Docker Post-Installation](https://docs.docker.com/engine/install/linux-postinstall/)
* [Docker-Compose](https://linuxhostsupport.com/blog/how-to-install-and-configure-docker-compose-on-ubuntu-20-04/)
* [GTP5G](https://github.com/free5gc/gtp5g)
* [Free5GC-Compose](https://github.com/free5gc/free5gc-compose)
* [My5G-RANTester-Compose](https://github.com/my5G/my5G-RANTester-docker)

### Para realizar a instalação:
Clone esse repositório e, na pasta Experiment-Setup, execute ```sudo bash setup.sh```.\
Para iniciar o Free5GC-Compose em background, utilize ```sudo docker-compose up -d``` na pasta ```experiment/free5gc-compose/```.\
Para iniciar o My5G-RANTester-Compose em background, utilize ```sudo docker-compose up -d``` na pasta ```experiment/my5G-RANTester-docker/```.
