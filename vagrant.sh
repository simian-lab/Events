#!/usr/bin/env bash

# Fix pesky locale issues
touch /etc/default/locale
echo 'LC_ALL="en_US.UTF-8"' | sudo tee /etc/default/locale

apt-get install -y apache2

# Make sure that the repos are updated before installing
apt-get update

# Make sure log folder exists
mkdir /vagrant/logs

# Point everything in the right direction
rm -rf /var/www
ln -fs /vagrant /var/www

# Make sure apache handles our stuff
a2enmod headers
a2enmod rewrite
a2enmod expires

# Restart for good measure
service apache2 restart -y