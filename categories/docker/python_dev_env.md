## python dev dev

#### [compose install](https://docs.docker.com/compose/install/)

```ruby
curl -L https://github.com/docker/compose/releases/download/1.1.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

docker-compose --version
```

#### Dockerfile

```ruby
FROM python:2.7
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
```

#### docker-compose.yml

```yaml
web:
  build: .
  command: python app.py
  ports:
   - "5000:5000"
  volumes:
   - .:/code
  links:
   - redis
redis:
  image: redis
```

# deploy

```ruby
sudo docker run --name fwmysql -e MYSQL_ROOT_PASSWORD=Yang#Flower@Wrong! -d mysql:5.6
sudo docker run -it --link fwmysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'

CREATE DATABASE `watch_movies` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use watch_movies;
SOURCE ~/watch_movies.sql;

sudo docker run --name redisdb -d redis

sudo docker build --no-cache -t web .
sudo docker run --name watchmovie --link redisdb:redisdb --link fwmysql:fwmysql -d -p 8888:8888 web


sudo docker build -t tornado-content-nginx .
sudo docker run --name tornado-nginx -d -p 80:80 tornado-content-nginx

sudo vim /etc/hosts
```

#### nginx proxy conf

```ruby
worker_processes 1;

events { worker_connections 1024; }

http {
    sendfile on;
    gzip              on;
    gzip_http_version 1.0;
    gzip_proxied      any;
    gzip_min_length   500;
    gzip_disable      "MSIE [1-6]\.";
    gzip_types        text/plain text/xml text/css
                      text/comma-separated-values
                      text/javascript
                      application/x-javascript
                      application/atom+xml;

    # List of application servers
    upstream watch_movie_servers {
        server 172.17.0.12:5000;  # docker ip
    }

    # Configuration for the server
    server {

        # Running port
        listen 80;

        server_name watchmovie.com;

        # Proxying the connections connections
        location / {
            proxy_pass         http://watch_movie_servers;
            proxy_redirect     off;
            proxy_set_header   Host $host;
            proxy_set_header   X-Real-IP $remote_addr;
            proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header   X-Forwarded-Host $server_name;
        }
    }
}
```

### articles

1. [Docker 自动化 Nginx 反向代理](http://segmentfault.com/a/1190000000730073)
2. [使用 Etcd 和 Haproxy 做 Docker 服务发现](http://segmentfault.com/a/1190000000730186)
3. [使用 Fluentd 管理 Docker 日志](http://segmentfault.com/a/1190000000730444)
4. [segmentfault docker tag](http://segmentfault.com/search?q=docker)
5. [docker如何创建一个运行后台进程的容器并同时提供shell终端](http://segmentfault.com/a/1190000000755980)
