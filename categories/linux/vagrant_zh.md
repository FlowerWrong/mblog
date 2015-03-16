## 使用vagrant创建统一的开发环境

##### 一. 安装vagrant和virtual box并下载ubuntu 12.04 32 bit镜像

```ruby
# virtual box
https://www.virtualbox.org/wiki/Downloads
# vagrant
http://downloads.vagrantup.com/

# ubuntu 12.04 32 bit
http://files.vagrantup.com/precise32.box
```

##### 二. 初始化并安装rails环境

```ruby
# 进入rails项目文件夹
vagrant box add rubywine ~/box/precise32.box
vagrant init rubywine
# edit Vagrantfile
config.vm.network :private_network, ip: "192.168.33.10"

vagrant up
vagrant ssh

# add /.vagrant and Vagrantfile to gitignore
sudo apt-get update
sudo apt-get install curl
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
source ~/.bash_profile
rvm -v
rvm install 2.1.5
rvm use 2.1.5 --default
ruby -v
gem -v
# gem source -r https://rubygems.org/
# gem source -a https://ruby.taobao.org

# install nodejs via ppa, you can install it via nvm.
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

# install nodejs via nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
source ~/.nvm/nvm.sh
nvm -v
nvm install 0.12
nvm use 0.12
nvm alias default 0.12
npm -v

node -v

sudo apt-get install mysql-server mysql-client
sudo apt-get install libmysql-ruby libmysqlclient-dev

sudo apt-get install -y imagemagick
cd /vagrant/
gem install bundler
gem update --system
gem update
bundle install
rake db:create db:migrate db:seed
rails server
# visit http://192.168.33.10:3000/

exit
vagrant halt
vagrant package --vagrantfile Vagrantfile --output ~/box/rails.box
```

###### install java

```ruby
# 安装jdk7 via ppa
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

sudo apt-get install oracle-java7-set-default
java -version
```

###### 安装 elasticsearch

```ruby
# 安装 elasticsearch
# http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/setup-repositories.html
# http://happycasts.github.io/ep/use-elasticsearch-with-rails/

wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
sudo vim /etc/apt/sources.list
# deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main

sudo apt-get update
sudo apt-get install elasticsearch
sudo service elasticsearch start
# 设置开发启动
sudo update-rc.d elasticsearch defaults 95 10
```

###### 安装 redis

```bash
sudo apt-get install redis-server
```
