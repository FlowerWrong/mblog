## laravel development in ubuntu 14.04

##### install mysql

```ruby
sudo apt-get install mysql-server mysql-client
```

##### install php 5.6

```ruby
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php5-5.6
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install php5

# php5-fpm optional
sudo apt-get install php5-mysql php5-curl php5-gd php5-mcrypt php5-json php5-cli php5-fpm

php5 -v
```

##### install composer

```ruby
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
```

##### composer slow

```ruby
http://pkg.phpcomposer.com/
```
