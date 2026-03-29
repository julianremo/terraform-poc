#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>Thank you from $(hostname)</h1>" > /var/www/html/index.html