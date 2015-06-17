# linux shadowsocks config

#### [shadowsocks-gui](https://github.com/shadowsocks/shadowsocks-gui)


#### firefox plugin autoplaxy

#### Use with curl

`curl http://www.google.com -L --socks5-hostname 127.0.0.1:1080`

#### [Convert Shadowsocks into an HTTP proxy](https://github.com/shadowsocks/shadowsocks/wiki/Convert-Shadowsocks-into-an-HTTP-proxy)

#### [Using Shadowsocks with Command Line Tools](https://github.com/shadowsocks/shadowsocks/wiki/Using-Shadowsocks-with-Command-Line-Tools)

#### Client config for python

```ruby
{
    "server":"ip",
    "server_port":443,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"xxxxxxxx",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": true,
    "workers": 1
}

# sudo sslocal -c /etc/shadowsocks.json -d start
```

#### https://github.com/rofl0r/proxychains-ng

#### 注意删除nginx默认设置
