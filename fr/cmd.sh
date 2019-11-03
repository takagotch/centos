## syslog   journald rsyslog
systemctl status systemd-journald
journalclt -b
journalctl --since="2014-09-05 01:23:45" --until="2014-09-07 04:56:00"
journalctl --since="2014-09-06 00:03:27" --until="2014-09-07 11:56:00" -u sshd.service
journalctl --since-today
journalctl -f
journalctl -p warning
journalctl -p err
journalctl -p 0
journalctl -p 1
journalctl -p 2
journalctl -p 3
journalctl -p 4
journalctl -p 5
journalctl -p 6

logger -p daemon.emerg "*** TEST LOG **"

journalctl -p 9
logger -p daemon.alert "*** ALERT TEST LOG ***."
journalctl -p i

journalctl -k
journalctl _PID=10765

journalctl /usr/sbin/crond
df -HT | grep tmpfs

cp /etc/systemd/journald.conf /etc/systemd/journald.conf.org
vi /etc/systemd/journald.conf

systemctl restart systemd-journald
cd /var/log/journal/xxxx/
ls -l
cat /etc/machines-id

vi /etc/systemd/journald.conf
systemctl restart systemd-journald
journalctl --disk-usage

vi /etc/rsyslog.conf

touch /var/log/journalctl_log_172.16.70.2
firewall-cmd-zone=public --add-port=514/udp --permanent
firewall-cmd --reload
firewall-cmd --list-all

systemctl restart rsyslog
systemctl status rsyslog

firewall-cmd --zone=public --add-port=514/udp --permanent
firewall-cmd --reload

systemctl start sysemd-journald
systemctl status systemd-journald
journalctl -o short -f | nc -uv 172.16.70.99 514


mkdir -p /var/log/journal/'cat /etc/machine-id'
journalctl --setup-keys --force

journalctl --verify-key ee2e0e-045220-a3cec8-f111f8/17ec78-35a4e900

yum install -y sos

sosreport -a --report

pwd
tar sJvf /var/tmp/sosreport-centos70n02-201410221-3807.tar.xz -C
ls -F
cd sosreport-centos70n02-20141022103807/
ls -F
cd
ls -F
mv sosreport-centos70n02-20141022103807 /var/www/html/
systemctl start httpd
firewall-cmd --list-all
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload

cd /var/www/html/
chmod 755 ./sosreport-centos70n02-20141022103807
cd ./sosreport-centos70n02-20141022103807
chmod -R 655 ./sos_commands
chmod -R 655 ./sos_logs
chmod -R 655 ./sos_reports
  


## NetworkManager

ls -l /sys/class/net/
ls -l /sys/class/net/

nmcli connection

nmcli connection down eno1
nmcli connection show
nmcli connection up eno1
nmcli device
nmcli device show
nmcli device show eno1

nmcli connection modify eno1 ipv4.addresses "10.0.0.82/24 10.0.0.1"
nmcli connection down eno1 && nmcli connection up eno1

nmcli device show eno1

nmcli connection modify eno1 ipv4.dns "10.0.0.254 10.0.0.253"
nmcli connection modify eno1 ipv4.routes "10.0.0.0/24 10.0.0.1"
nmcli connection down eno1 && nmcli connection up eno1
nmcli device show eno1

nmcli device show eno1 | grep DNS
cat /etc/resolv.conf
vi /etc/NetworkManager/NetworkManager.conf
nmcli connection modify eno1 ipv4.dns "10.0.0.253"

nmcli connection down eno1 && nmcli connection up eno1
nmcli device show eno1 | grep DNS
systemctl restart network

cat /etc/resolv.conf
nmcli device
nmcli connection delete eno1
nmcli device

nmcli connection add type ehternet ifname eno1 con-name eno1
nmcli device

nmcli connection modify eno1 ipv4.method manual ipv4.addresses "192.168.0.82"
nmcli connection down eno1 && nmcli connection up eno1
nmcli device show eno1
cat /etc/sysconfig/network-scripts/ifcfg-eno1

nmcli general hostname
nmcli general hostname centos70n254.jpn.linux.hp.com
hostname
cat /etc/hostname


nmcli networking
nmcli networking on
ip link
nmcli networking off
nmcli networking
ip link

nmtui


ip a

ip addr add 192.168.0.82/255.255.0 dev eno3
ip add show eno3

ip link

ip route add default via 192.168.0.254
ip route del default via 192.168.0.254

ip neigh
ip neigh flush 172.16.1.115

ip -a l
ss -ant # tcp socket ss
ss -anu


yum install -y teamd
nmlic connection add team con-name team0 ifname team0 config '{"runner"}'
nmcli connection modify team0 ipv4.method manual ipc4.addresses "172.16.70"
nmcli connection add type team-slave autoconnect no ifname eth0 master team0
nmcli connection add type team-slave autoconnect no ifname ens7 master team0
systemctl restart network
nmcli connection modify team-slave-sns7 connection.autoconnect yes

ip a

nmcli c

cat /etc/sysconfg/network-scripts/ifcfg-team0
cat /etc/sysconfg/network-scripts/ifcfg-tem-slave-eth0
cat /etc/sysconfig/network-scripts/ifcfg-team-slave-sns7


nmcli device

cp /etc/default/grub /etc/default/grub.org
vi /etc/default/grub

grub2-mkconfig -o /boot/grub2/grub.cfg
reboot


cd /etc/sysconfig/network-scripts/
cat ifcfg-eth0
cat ifcfg-eht1
reboot





cd /etc/sysconfig/network-scripts/
mv ifcfg-ano1 org.ifcfg-eno1
mv ifcfg-eno2 org.ifcfg-eno2
mv ifcfg-eno3 org.ifcfg-eno3
mv ifcfg-eno4 org.ifcfg-eno4
cp org.ifcfg-eno1 ifcfg-eth0
cp org.ifcfg-eno2 ifcfg-eth1
cp org.ifcfg-eno3 ifcfg-eth2
cp org.ifcfg-eno3 ifcfg-eth3

vi ifcfg-eth0
reboot
nmcli device show




