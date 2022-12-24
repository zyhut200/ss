yum update -y && yum install curl -y
yum -y install wget
wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
bash install.sh  --port=26666 --user=78888 --passwd=78888
service sockd restart
