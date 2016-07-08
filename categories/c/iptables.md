## iptalbes(linux) pfctl(mac)

#### NAT

NAT一般情况下分为SNAT，DNAT和PNAT

## SNAT：源地址转换

## DNAT：目标地址转换

## mac shadowsocks forward

* [设置端口转发](http://book.zhouyang.me/content/macos/port-forwarding.html)

```bash
sudo sysctl net.inet.ip.forwarding=1
sudo sysctl net.inet6.ip6.forwarding=1
sudo sysctl -a | grep forwarding
```

## [iptalbes source code](http://www.netfilter.org/downloads.html)
