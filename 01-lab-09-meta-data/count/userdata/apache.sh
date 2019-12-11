#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo ufw app list >> /tmp/log.txt
echo "---------------------------------------" >> /tmp/log.txt
sudo ufw allow 'Apache Full' >> /tmp/log.txt
sudo ufw status >> /tmp/log.txt
echo "---------------------------------------" >> /tmp/log.txt
sudo systemctl status apache2 >> /tmp/log.txt