# Vagrant GVM #

Install GVM (Groovy enVironment Manager) on a vagrant box.

Currently this fails on the first run, but succeeds on the second run.

Tested on:

 * Centos 6.4

Follow these steps to use:

 * Install vagrant (http://www.vagrantup.com/)
 * Add a box to your vagrant installation "vagrant box add centos-min https://dl.dropbox.com/u/7225008/Vagrant/CentOS-6.3-x86_64-minimal.box"
 * Clone this repo
 * Cd into vagrant-gvm
 * run "vagrant up"
 * run "vagrant reload"