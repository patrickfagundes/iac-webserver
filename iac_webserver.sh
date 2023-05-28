#! /bin/bash

echo "Atualizando o OS..."

apt-get update -y
apt-get upgrade -y

echo "Instalando as aplicações..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Copiando os arquivos da Aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/