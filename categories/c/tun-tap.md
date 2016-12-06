# tun tap

## vtun 工作原理

* [VTun 工作原理详解](http://blog.csdn.net/tycoon1988/article/details/38366023)
* [深入解析Mac OS X & iOS 操作系统 学习笔记（十八）](http://www.jianshu.com/p/54ec6833028f)

![tuntap](http://upload-images.jianshu.io/upload_images/2125871-f4c452a13482e89c.png)

* [Kone VPN源码分析](https://ftwo.me/post/Kone%20VPN%E6%BA%90%E7%A0%81%E5%88%86%E6%9E%90/)

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

## tun tap vpn

* [ShadowVPN](https://github.com/FlowerWrong/ShadowVPN): ShadowVPN is a fast, safe VPN based on libsodium
* [kone](https://github.com/xjdrew/kone): Transparent proxy for home/enterprise network
* [tunsocks](https://github.com/russdill/tunsocks): User-level IP forwarding and SOCKS proxy for VPNs that provide tun-like interface
* [hans](https://github.com/friedrich/hans): IP over ICMP
* [minivtun](https://github.com/rssnsj/minivtun): A fast, secure and reliable VPN service based on non-standard protocol
* [mptun](https://github.com/cloudwu/mptun): Multi-Path Tunnel VPN
* [simpletun.c](https://gist.github.com/rickyzhang-cn/8f91f5ae99c82b26f5d3): 一个简单的使用tun/tap建立tunnel的示例代码
* [ocproxy](https://github.com/cernekee/ocproxy): a user-level SOCKS and port forwarding proxy for OpenConnect based on lwIP
* [libtuntap](https://github.com/LaKabane/libtuntap): The portable Tun/Tap devices configuration utility
* [tun-tcp-socket](https://github.com/asanka-code/tun-tcp-socket): The TCP client-server programs which can be used to tunnel IP packets (ICMP payloads to be specific) over a TCP socket connection
* [proximac](https://github.com/csujedihy/proximac): An open-source alternative to proxifier
* [tuntap](https://github.com/liudanking/tuntap): A tuntap library supports both Linux and OS X written in Golang
* [osxtun](https://github.com/chzyer/osxtun): create tun in osx
* [mproxy](https://github.com/examplecode/mproxy): c 语言实现的一个最小的http代理，支持翻墙
* [wstun](https://github.com/Gawen/wstun): tun/tap tunnel over HTML5 WebSocket in python
* [udptap_tunnel](https://github.com/vi/udptap_tunnel): Simple UDP tun/tap-based tunnel with mcrypt encryption. Also some more AF_PACKET and tun/tap related tools
* [htun](https://github.com/rofl0r/htun/blob/master/doc/README): IP-over-HTTP tunnelling VPN network interface
* openvpn
* openconnect
* [networkextension/liblwip](https://github.com/networkextension/liblwip)
* [tun2socks](https://github.com/sails/tun2socks): c++
* [badvpn](https://github.com/ambrop72/badvpn): NCD scripting language, tun2socks proxifier, P2P VPN
* [zhuhaow/tun2socks](https://github.com/zhuhaow/tun2socks)
