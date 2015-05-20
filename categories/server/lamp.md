# lamp config in ubuntu 12.04

```ruby
# version
cat /proc/version

# set locale
echo "export LC_ALL=C" >> /root/.bashrc
source /root/.bashrc

# install apache2
apt-get install apache2

# install mysql
apt-get install mysql-server mysql-client

# install php5.5
apt-get install python-software-properties
add-apt-repository ppa:ondrej/php5
apt-get update
apt-get install php5

# install php dependency
apt-get install libapache2-mod-php5
apt-cache search php5
apt-get install php5-mysql php5-curl php5-gd php5-mcrypt

# install swoole
apt-get install php5-dev
git clone https://github.com/swoole/swoole-src.git
cd swoole-src
phpize
./configure
make && make install
# add extension=swoole.so to php.ini
php -m

# install redis-server
apt-get install redis-server

# install phpredis
git clone https://github.com/phpredis/phpredis.git
cd phpredis
phpize
./configure [--enable-redis-igbinary]
make && make install
# add extension=redis.so to php.ini
```
