# mqtt

## [server list](https://github.com/mqtt/mqtt.github.io/wiki/Server%20support)

### mosquitto

##### [install](http://nathanborror.tumblr.com/post/31046947556/mqtt)

```ruby
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt-get update
sudo apt-get install mosquitto
sudo apt-get install mosquitto-clients
```

##### [usage 1](http://nathanborror.tumblr.com/post/31046947556/mqtt)

```ruby
mosquitto_sub -d -t hello/world
mosquitto_pub -d -t hello/world -m "Hello World"
```

##### [usage 2](https://github.com/njh/ruby-mqtt)

```ruby
gem install mqtt

# pub.rb
# sub.rb
```

##### auth

```ruby
sudo vim /etc/mosquitto/mosquitto.conf
password_file /etc/mosquitto/pwfile

sudo mosquitto_passwd -c /etc/mosquitto/pwfile yang

sudo mosquitto -c /etc/mosquitto/mosquitto.conf -d
```

```ruby
# Place your local configuration in /etc/mosquitto/conf.d/
#
# A full description of the configuration file is at
# /usr/share/doc/mosquitto/examples/mosquitto.conf.example

pid_file /var/run/mosquitto.pid

persistence true
persistence_location /var/lib/mosquitto/

log_dest file /var/log/mosquitto/mosquitto.log

include_dir /etc/mosquitto/conf.d

allow_anonymous false
password_file /etc/mosquitto/pwfile
```

#### mqtt QoS(http://public.dhe.ibm.com/software/dw/webservices/ws-mqtt/mqtt-v3r1.html#qos-flows)

* QoS level 0: At most once delivery
* QoS level 1: At least once delivery
* QoS level 2: Exactly once delivery
