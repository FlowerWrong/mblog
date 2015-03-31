## Build a dev laravel env.

#### articles

1. [homestead](https://phphub.org/topics/2)
2. [How to Install Laravel with an Nginx Web Server on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-install-laravel-with-an-nginx-web-server-on-ubuntu-14-04)
3. [hhvm nginx laravel](http://fideloper.com/hhvm-nginx-laravel)
4. [laravel nginx config](http://type.so/linux/nginx-and-laravel.html)
5. [laravel setup](https://www.digitalocean.com/community/tutorials/how-to-install-laravel-with-nginx-on-an-ubuntu-12-04-lts-vps)
6. [laravel nginx conf](http://stackoverflow.com/questions/21091405/nginx-configuration-for-laravel-4)
7. [laravel 4 gitignore](http://stackoverflow.com/questions/17003253/which-files-directories-to-ignore-in-a-laravel-4-project-when-using-version-cont)
8. [git ignore api](https://www.gitignore.io/)
9. [github gitignore](https://github.com/github/gitignore/blob/master/Laravel.gitignore)
10. [env dev of laravle *](http://laravel.io/forum/05-24-2014-developing-locally-and-using-git-how-do-i-set-up-config)
11. [laravel dot env](http://jpbetley.com/php-dotenv/)


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

vagrant init laravel

sudo apt-get install -y unzip vim wget build-essential python-software-properties

sudo apt-get install mysql-server mysql-client

sudo add-apt-repository -y ppa:nginx/stable
sudo apt-get update
sudo apt-get intsall nginx
# 所有的配置文件都在/etc/nginx下,并且每个虚拟主机已经安排在了/etc/nginx/sites-available下
# 程序文件在/usr/sbin/nginx * 日志放在了/var/log/nginx中
# 并已经在/etc/init.d/下创建了启动脚本nginx
# 默认的虚拟主机的目录设置在了/var/www/nginx-default

sudo apt-get install php5-mysql php5-curl php5-gd php5-mcrypt php5-json php5-fpm php5-cli
sudo php5enmod mcrypt
sudo service php5-fpm restart

sudo apt-get install phpmyadmin
sudo ln -s /usr/share/phpmyadmin/ /var/www/html/
```
