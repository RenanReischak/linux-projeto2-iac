#!/bin/bash

echo "IaC de Provisionamento de um servidor web em Linux"

echo "Buscando atualizções para o servidor"
apt-get update

echo "Atualizando servidor"
apt-get upgrade -y

echo "Instalando apache"
apt-get install apache2 -y

echo "Instalando unzip"
apt install unzip -y

echo "Baixando e copiando arquivos da aplicação" 
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Provisionamento concluido"



