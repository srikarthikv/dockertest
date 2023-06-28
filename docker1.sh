sudo apt update
sudo apt install docker.io

sudo systemctl start docker
sudo systemctl enable docker

sudo groupadd docker
sudo usermod -aG docker $USER

sudo snap install docker


export REGISTRY_USERNAME=testcontainerbrt
export REGISTRY_PASSWORD=dAjT/WgFLOo0EixLPoNuc/tghr9/agruA95SLv/Rn5+ACRC2m+6p

sudo docker login -u $REGISTRY_USERNAME -p $REGISTRY_PASSWORD testcontainerbrt.azurecr.io

sudo docker pull testcontainerbrt.azurecr.io/flaskimage:latest

sudo docker run -p 443:8000 testcontainerbrt.azurecr.io/flaskimage

