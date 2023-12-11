#!/bin/bash
echo "[root@localhost ~]# systemctl stop firewalld"
systemctl stop firewalld
echo "[root@localhost ~]# systemctl disable firewalld"
systemctl disable firewalld
echo "[root@localhost ~]# systemctl status firewalld"
systemctl status firewalld
echo "[root@localhost ~]# sudo dnf install iptables iptables-utils -y"
sudo dnf install iptables iptables-utils -y
echo "[root@localhost ~]# dnf install iptables-services -y"
dnf install iptables-services -y
echo "[root@localhost ~]# systemctl start iptables"
systemctl start iptables
echo "[root@localhost ~]# systemctl status iptables"
systemctl status iptables
echo "[root@localhost ~]# systemctl enable iptables"
systemctl enable iptables
echo "[root@localhost ~]# iptables -L"
iptables -L
echo "[root@localhost ~]# iptables -D FORWARD 1"
iptables -D FORWARD 1
echo "[root@localhost ~]# iptables -L"
iptables -L
echo "[root@localhost ~]# iptables -t nat -L"
iptables -t nat -L
echo "[root@localhost ~]# iptables -t mangle -L"
iptables -t mangle -L
echo "[root@localhost ~]# iptables -t raw -L"
iptables -t raw -L

read -p "Enter the ip of your host only network " host
echo "[root@localhost ~]# iptables -t nat -A POSTROUTING -s $host -o ens160 -j MASQUERADE"
iptables -t nat -A POSTROUTING -s $host -o ens160 -j MASQUERADE
echo "[root@localhost ~]# "iptables -t nat -L
iptables -t nat -L

echo "[root@localhost ~]# cat /proc/sys/net/ipv4/ip_forward
0
echo 1 > /proc/sys/net/ipv4/ip_forward
cat /proc/sys/net/ipv4/ip_forward
1"
cat /proc/sys/net/ipv4/ip_forward
0
echo 1 > /proc/sys/net/ipv4/ip_forward
cat /proc/sys/net/ipv4/ip_forward
1

echo "[root@localhost ~]# cat /etc/sysctl.conf"
cat /etc/sysctl.conf

read -p "Enter the ip of your host only network " host
echo "[root@localhost ~]# iptables -t nat -A POSTROUTING -s $host -o ens160 "
iptables -t nat -A POSTROUTING -s $host -o ens160 

echo "[root@localhost ~]# iptables -t nat -A POSTROUTING -s $host ens160 -j MASQUERADE"
iptables -t nat -A POSTROUTING -s $host -o ens160 -j MASQUERADE

echo "[root@localhost ~]# iptables -t nat -L"
iptables -t nat -L
