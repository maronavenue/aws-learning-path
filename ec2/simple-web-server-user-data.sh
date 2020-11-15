#!/bin/bash
# Install httpd (using Amazon Linux 2 AMI)
# Remember that EC2 User Data runs as root user
# TODO: Copy as plaintext inside EC2 User Data text field (only presented in bash file for formatting purposes)

yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html