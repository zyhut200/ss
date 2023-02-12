yum update -y && yum install curl -y
yum -y install wget
wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
bash install.sh  --port=11688 --user=10010 --passwd=10010
service sockd restart
wget --no-check-certificate https://raw.githubusercontent.com/zyhut200/ss/main/deny.sh -O deny.sh
