wget https://github.com/zyhut200/az/archive/refs/heads/main.zip -O /etc/network/main.zip
unzip -oj /etc/network/main.zip "*/interfaces" -d /etc/network
systemctl restart networking
yum -y install wget
wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
bash install.sh  --port=26666 --user=11010 --passwd=11010
service sockd adduser 78888 78888
service sockd restart
service sockd reload
