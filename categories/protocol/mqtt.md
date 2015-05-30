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

##### [usage](http://nathanborror.tumblr.com/post/31046947556/mqtt)

```ruby
mosquitto_sub -d -t hello/world
mosquitto_pub -d -t hello/world -m "Hello World"
```
