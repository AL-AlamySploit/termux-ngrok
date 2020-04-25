#!/bin/dash
# Desenvolvido por Tchelo Noob
g='\033[1;32m'
echo "$g Atualizando repositório..."
apt update && upgrade -y
apt install -y wget
clear
echo
echo "${g} █████╗ ██╗       █████╗ ██╗      █████╗ ███╗   ███╗██╗   ██╗";
echo "${g}██╔══██╗██║      ██╔══██╗██║     ██╔══██╗████╗ ████║╚██╗ ██╔╝";
echo "${g}███████║██║█████╗███████║██║     ███████║██╔████╔██║ ╚████╔╝";
echo "${g}██╔══██║██║╚════╝██╔══██║██║     ██╔══██║██║╚██╔╝██║  ╚██╔╝";
echo "${g}██║  ██║███████╗ ██║  ██║███████╗██║  ██║██║ ╚═╝ ██║   ██║";
echo "${g}╚═╝  ╚═╝╚══════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝   ╚═╝";
echo
echo "Deseja instalar o Ngrok? [Y/n]"
read opcao
case $opcao in
y)
echo
termux-open-url https://youtu.be/qjZX7e1hnUE
echo $g"Downloading Termux-ngrok..."
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
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo
echo "Exemplo de comando (ngrok http 80\nOu ngrok para ajuda)"
;;

n)
clear
echo "Ngrok não instalado :("
echo
esac
