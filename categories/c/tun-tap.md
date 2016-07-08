# tun tap

## vtun 工作原理

* [VTun 工作原理详解](http://blog.csdn.net/tycoon1988/article/details/38366023)

## VPN

* [如何使用Android系统自带的VPN服务框架](http://blog.csdn.net/roland_sun/article/details/46337171)
* [科学上网的一些原理](https://hengyunabc.github.io/something-about-science-surf-the-internet/)
* [socks代理转VPN](http://fqrouter.tumblr.com/post/51474945203/socks%E4%BB%A3%E7%90%86%E8%BD%ACvpn)
* [android VpnService](https://developer.android.com/reference/android/net/VpnService.html)
* [Win7下部署Tun2Socks,将Shadowsocks转成全局代理](http://www.lxway.net/854980611.html)
* [Linux利用Redsocks实现shadowsocks全局代理](http://blog.leanote.com/post/yangchuansheng33@gmail.com/Untitled-5526a67238f411636b000b49-47)
* [Linux使用Redsocks以实现全局代理](https://fawkex.me/linux-redsocks/)

```ruby
#不重定向目的地址为服务器的包
sudo iptables -t nat -A OUTPUT -d $SERVER_IP -j RETURN  #请用你的shadowsocks服务器的地址替换$SERVER_IP

#不重定向私有地址的流量
sudo iptables -t nat -A OUTPUT -d 10.0.0.0/8 -j RETURN
sudo iptables -t nat -A OUTPUT -d 172.16.0.0/16 -j RETURN
sudo iptables -t nat -A OUTPUT -d 192.168.0.0/16 -j RETURN

#不重定向保留地址的流量,这一步很重要
sudo iptables -t nat -A OUTPUT -d 127.0.0.0/8 -j RETURN

#重定向所有不满足以上条件的流量到redsocks监听的12345端口
sudo iptables -t nat -A OUTPUT -p tcp -j REDIRECT --to-ports 12345 #12345是你的redsocks运行的端口,请根据你的情况替换它
```

## udptun

* [udptun.c](http://linuxgazette.net/149/misc/melinte/udptun.c)
* [tun.c](http://stefans.datenbruch.de/lafonera/sources/extracted/dl/chillispot-1.0/src/tun.c)
* [tun2socks-iOS](https://github.com/shadowsocks/tun2socks-iOS)
