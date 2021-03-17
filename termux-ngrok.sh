#!/bin/dash
# Desenvolvido por: Ahmed Mohamed (A l - A l a m y)
g='\033[1;32m'
b='\033[1;34m'
echo "$g Updating and Upgrading First..!"
apt update && upgrade -y
apt install  wget -y
clear
echo
echo "${b} █████╗ ██╗       █████╗ ██╗      █████╗ ███╗   ███╗██╗   ██╗";
echo "${b}██╔══██╗██║      ██╔══██╗██║     ██╔══██╗████╗ ████║╚██╗ ██╔╝";
echo "${b}███████║██║█████╗███████║██║     ███████║██╔████╔██║ ╚████╔╝";
echo "${b}██╔══██║██║╚════╝██╔══██║██║     ██╔══██║██║╚██╔╝██║  ╚██╔╝";
echo "${b}██║  ██║███████╗ ██║  ██║███████╗██║  ██║██║ ╚═╝ ██║   ██║";
echo "${b}╚═╝  ╚═╝╚══════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝   ╚═╝";
echo
echo $g"Deseja instalar o Ngrok? [Y/n]"
read opcao
case $opcao in
y)
echo
termux-open-url https://www.youtube.com/channel/UCm-UlQ6ygk4jkNfgFzlc2LA
echo $g"Downloading..!"
sleep 0.4
#printf "Please wait..[                    ] 0% "
#sleep 0.4
#clear
#printf "Please wait..[=====               ] 25%"
#sleep 0.4
#clear
#printf "Please wait..[==========          ] 50%"
#sleep 0.4
#clear
#printf "Please wait..[===============     ] 75%"
#sleep 0.4
#clear
#printf "Please wait..[====================] 100%"
#sleep 0.4
#clear
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Arquitetura desconhecida"
esac

wget "https://github.com/AL-AlamySploit/Ngrok-Test/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${g}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${g}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${g}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${g}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${g}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${g}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo
echo $g"Example driving ('ngrok http 80'\n or ngrok help)"
;;

n)
clear
echo "Ngrok não instalado :("
echo
esac
