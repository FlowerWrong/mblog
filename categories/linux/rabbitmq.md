## [rabbitmq](https://www.rabbitmq.com)

### [Install](https://www.rabbitmq.com/install-debian.html)

```ruby
# install erlang
# see https://www.erlang-solutions.com/downloads/download-erlang-otp

sudo vim /etc/apt/sources.list
# deb http://www.rabbitmq.com/debian/ testing main

wget https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo apt-key add rabbitmq-signing-key-public.asc

sudo apt-get update
sudo apt-get install rabbitmq-server

rabbitmqctl stop
rabbitmqctl status

# log
/var/log/rabbitmq
```

### [install rabbitmq mqtt plugin](https://github.com/rabbitmq/rabbitmq-mqtt)

```ruby
# plugins list
ls -al /usr/lib/rabbitmq/lib/rabbitmq_server-3.5.3/plugins
rabbitmq-plugins list
rabbitmqctl list_users
rabbitmqctl list_vhosts
rabbitmqctl list_permissions

sudo netstat -anp | grep 1883
sudo service mosquitto stop

sudo rabbitmq-plugins enable rabbitmq_mqtt
cat /var/log/rabbitmq/rabbit@yy.log
sudo vim /etc/rabbitmq/enabled_plugins
sudo netstat -anp | grep 1883

# http://www.rabbitmq.com/management.html
sudo rabbitmq-plugins enable rabbitmq_management
# visit http://127.0.0.1:15672/ with guest and guest
sudo vim /etc/rabbitmq/rabbitmq.config
# [{rabbit, [{loopback_users, []}]}].

sudo /etc/init.d/rabbitmq-server restart
cat /var/log/rabbitmq/startup_log

sudo rabbitmqctl change_password guest 12345678

rabbitmqctl add_user yang password
rabbitmqctl set_permissions -p "/" yang ".*" ".*" ".*"
```