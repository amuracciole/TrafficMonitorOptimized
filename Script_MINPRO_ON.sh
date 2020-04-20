#!/bin/bash
#CODIGO PARA MINIPROYECTOS
# Inicializando...
sudo apt-get install at-spi2-core
cd /usr/share/vnx/filesystems
echo "\n---> ¡¡ INICIALIZANDO SCRIPT MINIPROYECTOS !! <---"
echo "      ---> Crear escenario... <---"
sleep 2
sudo vnx -f /usr/share/vnx/tfm/Lab_MinProy.xml -v --create
sleep 3
sudo vnx -f /usr/share/vnx/tfm/Lab_MinProy.xml --show-map
cd /home/upm/Desktop
#gnome-terminal -e 'sh -c "sh Script_MINPRO_controlador.sh;"'

