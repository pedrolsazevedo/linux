## Composer
### Disable IPv6
sudo sh -c "echo 'precedence ::ffff:0:0/96 100' >> /etc/gai.conf"
