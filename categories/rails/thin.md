## deploy with thin

```ruby
bundle exec thin start -C config/thin/development.yml
bundle exec thin start -C config/thin/production.yml

# thin/production.yml
#thin config
#user: www
#group: www
pid: tmp/pids/thin.pid
port: 3000
timeout: 30
wait: 30
log: log/thin.log
max_conns: 1024
require: []
environment: production
max_persistent_conns: 512
servers: 1  # 指定服务数，比如指定8000端口，那么会起8000-8002端口服务
threaded: false
daemonize: true  # 是否后台运行
#socket: tmp/sockets/thin.sock
chdir: /data/app/www/miao/current
tag: thin-server  # ps命令搜索标签名称

# stop thin
bundle exec thin stop -C config/thin/development.yml
cat tmp/pids/thin.3001.pid
cat tmp/pids/thin.3002.pid
cat tmp/pids/thin.3003.pid
kill -9 $(cat tmp/pids/thin.3003.pid)


upstream thin {
     server 127.0.0.1:3000;
     server 127.0.0.1:3001;
     server 127.0.0.1:3002;
}

server {
    listen 80;
    server_name acemoney.in;

    root /home/josh/current/public;

    location / {
      proxy_set_header X-Real-IP $remote_addr;
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_set_header Host $http_host;
      proxy_redirect false;

      if (-f $request_filename/index.html) {
        rewrite (.*) $1/index.html break;
      }
      if (-f $request_filename.html) {
        rewrite (.*) $1.html break;
      }
      if (!-f $request_filename) {
        proxy_pass http://thin;
        break;
      }
    }

    error_page 500 502 503 504 /50x.html;
    location = /50x.html {
      root html;
    }
}

# god
https://raw.githubusercontent.com/macournoyer/thin/master/example/thin.god

# foreman

# apache with thin
# http://www.rackspace.com/knowledge_center/article/ubuntu-apache-rails-and-thin
sudo a2enmod proxy
sudo a2enmod proxy_balancer
sudo a2enmod proxy_http
sudo a2enmod rewrite
sudo a2enmod headers
sudo a2enmod expires
```
