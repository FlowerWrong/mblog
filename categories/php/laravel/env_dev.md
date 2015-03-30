## Build a dev laravel env.

#### articles

1. [homestead](https://phphub.org/topics/2)

##### Install apache2,php5,mysql5,phpmyadmin

```ruby
sudo apt-get install php5

sudo apt-get install php5-cli

# install apache2 and php-ext
sudo apt-get install apache2
sudo apt-get install libapache2-mod-php5

# install mysql php-ext
sudo apt-get install php5-mysql php5-curl php5-gd php5-mcrypt php5-json
sudo php5enmod mcrypt
sudo a2enmod rewrite

sudo apt-get install phpmyadmin
sudo ln -s /usr/share/phpmyadmin/ /var/www/html/
```

##### Install [composer](https://getcomposer.org/)

```ruby
curl -sS https://getcomposer.org/installer | sudo php
sudo mv composer.phar /usr/local/bin/composer
```

#### 基于vagrant

```ruby
# https://atlas.hashicorp.com/laravel/boxes/homestead/versions/0.2.5/providers/virtualbox.box
vagrant box add laravel/homestead

```
