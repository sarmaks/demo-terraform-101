#!/bin/bash -v

mkdir -p /home/ec2-user/.ssh
chmod 700 /home/ec2-user/.ssh
touch /home/ec2-user/.ssh/authorized_keys
chmod 600 /home/ec2-user/.ssh/authorized_keys
echo "${public_key}" >> /home/ec2-user/.ssh/authorized_keys


yum install -y nginx > /tmp/nginx.log
/etc/init.d/nginx start
echo "<h1>Deployed via Terraform</h1>" > /usr/share/nginx/html/index.html
