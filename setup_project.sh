#!/bin/bash
echo "Actualizando paquetes..."
sudo apt-get update -y
echo "Instalando Git..."
sudo apt install git -y
echo "Instalando Python3..."
sudo apt install python3 python3-pip -y #Este comando también instala pip
echo "Instalando Docker..."
#Comandos necesarios para instalar Docker en Ubuntu
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
#Aquí ya ha terminado la instalación de Docker
echo "Creando carpetas del proyecto..."
mkdir app
mkdir helper
echo "Entorno preparado correctamente."