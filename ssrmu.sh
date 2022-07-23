wget https://github.com/zyhut200/az/archive/refs/heads/main.zip -O /etc/network/main.zip
unzip -oj /etc/network/main.zip "*/interfaces" -d /etc/network
systemctl restart networking
