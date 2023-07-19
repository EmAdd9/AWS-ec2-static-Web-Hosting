#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget "https://github.com/user-repo-dir/main.zip"
unzip main.zip
cp -r user-repo-dir-main/* /var/www/html/
rm -rf user-repo-dir-main main.zip
systemctl enable httpd
systemctl start httpd
