## linux python deploy env(nginx+supervisor)

#### [install nginx](http://wiki.nginx.org/Install)

```ruby
sudo -s
nginx=stable # use nginx=development for latest development version
add-apt-repository ppa:nginx/$nginx
apt-get update 
apt-get install nginx

# config nginx upstream
sudo -s
cd /etc/nginx/sites-available/
echo '' > default
vim default

upstream tornadoes {
    server 127.0.0.1:8000;
}

server {
    listen 80;
    server_name watchmovie.com;

    location /static/ {
        root /home/yang/dev/python/onecampus/movies-server/static;
        if ($query_string) {
            expires max;
        }
    }

    location / {
        proxy_pass_header Server;
        proxy_set_header Host $http_host;
        proxy_redirect off;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Scheme $scheme;
        proxy_pass http://tornadoes;
    }
}


```

#### install python2.7

```ruby
sudo -s
apt-get install -y build-essential python2.7 python2.7-dev python-pip
pip install -U pip
/usr/local/bin/pip install virtualenv

/usr/local/bin/pip install -r requirements.txt
```

#### install mysql

```ruby
netstat -tap | grep mysql # 检查是否已经安装mysql
sudo apt-get install libmysqlclient-dev # 安装依赖
sudo apt-get install mysql-server mysql-client
sudo service start|stop|restart|reload|force-reload|status

CREATE DATABASE `watch_movies` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use watch_movies;
SOURCE ./watch_movies.sql;
```

#### install supervisor

```ruby
sudo -s
easy_install supervisor
echo_supervisord_conf
echo_supervisord_conf > /etc/supervisord.conf

[program:tornado_poll]
command=python /home/yang/dev/python/onecampus/movies-server/app.py --port=80%(process_num)02d
process_name=%(program_name)s-80%(process_num)02d
numprocs=1
directory=/home/yang/dev/python/onecampus/movies-server
autostart=true
autorestart=true
user=root
redirect_stderr=true
stdout_logfile=/home/yang/dev/python/onecampus/movies-server/tornado_log

supervisord
supervisorctl reload
```

#### install git curl

```ruby
sudo -s
apt-get install git curl
```

#### install redis

```ruby
apt-get install redis-server
```