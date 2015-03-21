# qcloud cmd

#### tar

```ruby
tar -jcvf /tmp/etc.tar.bz2 /etc  # 打包后，以 bzip2 压缩
```

#### scp

```ruby
scp name@/ip:~/filename.tar.gz ~/filename.tar.gz

scp /path/local_filename username@servername:/path
```

#### wc

```ruby
wc -l all_databases.sql
wc -c filename
wc -w filename
```

#### mysqldump

```ruby
# 备份所有数据库
mysqldump --all-databases -u root -p > all_databases.sql

# 导出整个数据库
mysqldump -u name -p db_name > db_name.sql

# 导出一个表
mysqldump -u name -p db_name table_name > db_name_table_name.sql

# 导出一个数据库结构
mysqldump -u name -p -d --add-drop-table db_name > db_name.sql

# 导入数据库
# login to mysql
use db;
SOURCE db.sql;
```

#### setup log

```ruby
# install mysql
netstat -tap | grep mysql # 检查是否已经安装mysql
sudo apt-get install libmysqlclient-dev # 安装依赖
sudo apt-get install mysql-server mysql-client
sudo service start|stop|restart|reload|force-reload|status

# apache2
sudo apt-get install apache2
#/var/www
#/etc/apache2/apache2.conf

# imagemagick 用于图片裁剪等
sudo apt-get install imagemagick

# passenger
# https://www.phusionpassenger.com/documentation/Users%20guide%20Apache.html

# AH00558: apache2: Set the 'ServerName' directive globally to suppress this message
sudo vim /etc/apache2/apache2.conf
ServerName 127.0.0.1:80

# git
sudo apt-get install git

# rvm
sudo apt-get install curl # install curl
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm -v

# ruby
rvm install 2.1.5

# On ubuntu, you need `bash --login` to use rvm. To resolve:
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc
rvm use --default 2.1.5 # set to default
ruby -v
gem -v
gem source -r https://rubygems.org/
gem source -a https://ruby.taobao.org
gem update --system

# nodejs
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
node -v

# install java 7
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java7-set-default
```

#### 配置apache支持passenger

```ruby
#启用重写模块  
sudo a2enmod rewrite

#/etc/apache2/sites-available/test.com
<VirtualHost *:80>
    ServerName test.com
    DocumentRoot /home/flowerwrong/dev/ruby/rails/thecampus/public
    <Directory /webapps/mycook/public>
        Allow from all
        Options -MultiViews
    </Directory>
</VirtualHost>

sudo a2ensite test.com
```

###### 编辑/etc/apache2/mods_aviable/passenger.conf

```ruby
#/etc/apache2/mods-available/passenger.conf

<IfModule mod_passenger.c>
  PassengerRoot /usr/lib/ruby/vendor_ruby/phusion_passenger/locations.ini
  PassengerDefaultRuby /home/flowerwrong/.rvm/wrappers/default/ruby
</IfModule>
```

#### 2.4.7 don't have permission to access / on this server

```ruby
<Directory /wwwroot/demo>
　　　Options FollowSymLinks Indexes
　　　Require all granted
</Directory>
```
