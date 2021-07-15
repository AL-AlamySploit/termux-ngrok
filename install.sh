#!/bin/bash
g='\033[1;32m'
printf $g"Updating and Upgrading First..!\n"
apt update -y;apt upgrade -y
apt install  wget -y
clear
bash termux-ngrok.sh
