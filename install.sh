#!/bin/bash
g='\033[1;32m'
echo "$g Updating and Upgrading First..!"
apt update -y;apt upgrade -y
apt install  wget -y
clear
bash termux-ngrok.sh
