#!/bin/bash

sudo apt update && sudo apt install -y sshpass
for ip in 192.168.33.101 192.168.33.102 192.168.33.103 192.168.33.111 192.168.33.112; do
  sshpass -p "vagrant" ssh-copy-id -i ~/.ssh/id_ed25519.pub -o StrictHostKeyChecking=no vagrant@$ip
done