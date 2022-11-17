#!/bin/bash

echo "atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o apache2.."
apt-get install apache2 -y 

echo "Instalando o unzip.."
apt-get install unzip -y 

echo "Copiando os arquivos para o diretorio padrao.."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio main
cp -R * /var/www/html/

echo "Terminado!"