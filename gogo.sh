yum update -y && yum install curl -y
yum -y install wget
wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
bash install.sh  --port=1888 --user=test --passwd=5656
service sockd restart
