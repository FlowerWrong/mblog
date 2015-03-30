## install erlang

##### [erlang solutions](https://www.erlang-solutions.com/downloads/download-erlang-otp)

```ruby

```

##### install from source

```ruby
vagrant box add box_name path_to_rails_box
vagrant init box_name

# edit Vagrantfile
config.vm.network :private_network, ip: "192.168.33.10"

# username and pass both are vagrant
vagrant up
vagrant ssh

# add /.vagrant and Vagrantfile to gitignore
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install curl

# install nodejs via ppa, you can install it via nvm.
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

sudo apt-get install mysql-server mysql-client

exit
vagrant halt
vagrant package --vagrantfile Vagrantfile --output ~/box/rails.box

```

#### build erlang 17.0 on ubuntu 12/14.04

```shell
#!/bin/bash
# Pull this file down, make it executable and run it with sudo
# wget https://gist.githubusercontent.com/bryanhunter/10380945/raw/build-erlang-17.0.sh
# chmod u+x build-erlang-17.0.sh
# sudo ./build-erlang-17.0.sh

if [ $(id -u) != "0" ]; then
echo "You must be the superuser to run this script" >&2
exit 1
fi
apt-get update

# Install the build tools (dpkg-dev g++ gcc libc6-dev make)
apt-get -y install build-essential

# automatic configure script builder (debianutils m4 perl)
apt-get -y install autoconf

# Needed for HiPE (native code) support, but already installed by autoconf
# apt-get -y install m4

# Needed for terminal handling (libc-dev libncurses5 libtinfo-dev libtinfo5 ncurses-bin)
apt-get -y install libncurses5-dev

# For building with wxWidgets
apt-get -y install libwxgtk2.8-dev libgl1-mesa-dev libglu1-mesa-dev libpng3

# For building ssl (libssh-4 libssl-dev zlib1g-dev)
apt-get -y install libssh-dev

# ODBC support (libltdl3-dev odbcinst1debian2 unixodbc)
apt-get -y install unixodbc-dev
mkdir -p ~/code/erlang
cd ~/code/erlang
if [ -e otp_src_17.0.tar.gz ]; then
echo "Good! 'otp_src_17.0.tar.gz' already exists. Skipping download."
else
wget http://www.erlang.org/download/otp_src_17.0.tar.gz
fi
tar -xvzf otp_src_17.0.tar.gz
chmod -R 777 otp_src_17.0
cd otp_src_17.0
./configure
make
make install
exit 0
```
