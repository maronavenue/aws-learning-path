#!/bin/bash
# Install httpd (using Amazon Linux 2 AMI)
# Remember that EC2 User Data runs as root user
# TODO: Copy as plaintext inside EC2 User Data text field (only presented in bash file for formatting purposes)

yum update -y
yum install -y httpd
systemctl start httpd.service
systemctl enable httpd.service
EC2_AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
echo "<h2><pre>Hello World from $(hostname -f) in AZ: ${EC2_AZ}</pre></h2>" > /var/www/html/index.html