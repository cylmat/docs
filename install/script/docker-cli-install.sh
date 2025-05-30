#!/bin/bash

# ###
# Install from:
# https://www.paulsblog.dev/how-to-install-docker-without-docker-desktop-on-windows/
# ###

# 1. Required dependencies 
sudo apt-get update 
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release 

# 2. GPG key 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg 

# 3. Use stable repository for Docker 
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
#echo \ 
#  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \ 
#  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 

# 4. Install Docker 
sudo apt-get purge docker-ce docker-ce-cli containerd.io
sudo apt autoremove && sudo apt autoclean

sudo apt-get update 
sudo apt-get -y install docker-ce docker-ce-cli containerd.io 


# 5. Add user to docker group 
sudo groupadd docker 
sudo usermod -aG docker $USER 
cat /etc/group

# maybe  is error
# sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
# sudo chmod g+rwx "$HOME/.docker" -R

echo "Reload WSL"


## check
ls -l /var/run/docker.sock
sudo service docker start   # start the engine
sudo service docker status  # print some nice status information
# docker run hello-world      # run a test docker container
# journalctl -xeu docker.service
# cat /usr/lib/systemd/system/docker.service


# IF ERROR
# sudo update-alternatives --config iptables
# SELECT CHOICE 1 (legacy)


echo "Check docker run hello-world"



# If needed

# sudo chmod 666 /var/run/docker.sock
# echo "nameserver 1.1.1.1" | sudo tee resolv.conf
# apt search nftables | grep ^i

# # `/usr/sbin/iptables-legacy, 20, manual mode`
# update-alternatives --config iptables
# iptables-save
# sudo systemd docker start

# export DOCKER_HOST=unix:///var/run/docker.sock
# %docker ALL=(ALL) NOPASSWD: /usr/bin/dockerd
# export DOCKER_SOCK=/var/run/docker.sock
# export PUID=$(id -u)
# export PGID=$(id -g)

# systemctl start docker
# systemctl status docker.service

# journalctl -xeu docker.service
# sudo tail -f /var/log/syslog
# ---
# sudo service docker stop
# sudo service docker start 
# sudo service --status-all 

# docker context ls 
# docker context use default 

# sudo su
# systemctl start docker
# systemctl enable docker
# systemctl restart docker









#############################################################

# ### (https://docs.docker.com/engine/install/ubuntu)


#sudo apt-get update
#sudo apt-get install -y ca-certificates curl
#sudo install -m 0755 -d /etc/apt/keyrings
#sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
#sudo chmod a+r /etc/apt/keyrings/docker.asc

#echo \
#  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
#  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#sudo apt-get update

#sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#  sudo docker run hello-world
