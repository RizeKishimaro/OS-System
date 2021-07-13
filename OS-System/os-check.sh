#!/bin/bash
################################################
################################################
################################################
###############Code-by-YeMinAung################
##############Thursday.July8.2021###############
clear
echo -e "	░█████╗░░██████╗ "
echo -e	"	██╔══██╗██╔════╝ "
echo -e	"	██║░░██║╚█████╗░ "
echo -e	"	██║░░██║░╚═══██╗ "
echo -e	"	╚█████╔╝██████╔╝ "
echo -e	"	░╚════╝░╚═════╝░ "
echo -e "	░█████╗░██╗░░██╗███████╗░█████╗░██╗░░██╗ "
echo -e	"	██╔══██╗██║░░██║██╔════╝██╔══██╗██║░██╔╝ "
echo -e "       ██║░░╚═╝███████║█████╗░░██║░░╚═╝█████═╝░ "
echo -e "	██║░░██╗██╔══██║██╔══╝░░██║░░██╗██╔═██╗  "
echo -e "	╚█████╔╝██║░░██║███████╗╚█████╔╝██║░╚██╗ "
echo -e "  	░╚════╝░╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝ "
cpu=$(cat /proc/cpuinfo | grep model\ name | cut -f 2 -d ":"  | head -1)
cache=$(cat /proc/cpuinfo | grep cache\ size | awk '{print $4,$5}' | head -1)
hostname=$(uname -n)
os=$(uname -o)
processor=$(uname -m)
kernelver=$(uname -v)
mem=$(cat /proc/meminfo | grep -i memtotal | awk '{h = $2 / 1024 / 1024 ; print h, "GB"}')
macaddrether=$(ifconfig | grep ether | awk {'print $2'} | head -1)
macaddrwlan=$(ifconfig | grep ether | awk {'print $2'}| tail -1)
ipaddr=$(ifconfig | grep inet | awk {'print $2'} | head -1)
ipaddrwlan=$(ifconfig | grep inet | awk {'print $2'} | tail -2 | head -1)
uptime=$(uptime -p | awk '{print $2,$3,$4,$5}')
id() {
if [ $UID -ne 0 ] ; then
    echo "Sorry You're not root user!:("
else    
    echo "Cool, You're a ROOT User!"
fi
	
}
uid=$(id)
echo -e "CPU               :" $cpu
echo -e "CPU Cache Size        :" $cache
echo -e "Host Name           :" $hostname
echo -e "Operating System      :" $os
echo -e "Processor Type        :" $processor
echo -e "Kernel Version        :" $kernelver
echo -e "Memory               :" $mem
echo -e "IP Address Ethernet   :" $ipaddr
echo -e "IP Address WLAN       :" $ipaddrwlan
echo -e "MAC Address Wired     :" $macaddrether
echo -e "MAC Address Wireless  :" $macaddrwlan
echo -e "Machine Run Times is  :" $uptime
echo -e "USER CHECKED          :" $uid

