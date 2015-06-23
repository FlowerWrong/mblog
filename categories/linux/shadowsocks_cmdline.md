# Shasowsocks work with command line

### Install shadowsocks-gui, linux use [shadowsocks-qt5](https://github.com/librehat/shadowsocks-qt5/wiki/%E5%AE%89%E8%A3%85%E6%8C%87%E5%8D%97#ubuntu)

```ruby
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5
```

### Use shadowsocks with firefox, just install autoproxy. Google it for config step.

### Use shadowsocks with chrome, just google it.

### Install [proxychains-ng](https://github.com/rofl0r/proxychains-ng)

```ruby
mkdir -p ~/softwares
cd ~/softwares
git clone git@github.com:rofl0r/proxychains-ng.git
cd proxychains-ng

./configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
```

### Add proxychains config file

```ruby
vim ~/.proxychains/proxychains.conf

# content start
strict_chain
proxy_dns 
remote_dns_subnet 224
tcp_read_time_out 15000
tcp_connect_time_out 8000
localnet 127.0.0.0/255.0.0.0
quiet_mode

[ProxyList]
socks5  127.0.0.1 1080
# content end
```

### Usage

```ruby
proxychains4  curl https://www.twitter.com/
proxychains4 bundle install
```

### Reference

* [Convert-Shadowsocks-into-an-HTTP-proxy](https://github.com/shadowsocks/shadowsocks/wiki/Convert-Shadowsocks-into-an-HTTP-proxy)
* [Using-Shadowsocks-with-Command-Line-Tools](https://github.com/shadowsocks/shadowsocks/wiki/Using-Shadowsocks-with-Command-Line-Tools)