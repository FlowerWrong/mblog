# wireshark install and useage

#### install

```bash
sudo add-apt-repository ppa:n-muench/programs-ppa
sudo apt-get update
sudo apt-get install wireshark

sudo groupadd wireshark
sudo chgrp wireshark /usr/bin/dumpcap
sudo chmod 4755 /usr/bin/dumpcap
sudo gpasswd -a $USER wireshark
```

#### useage

###### 1.设置过滤条件
http://blog.csdn.net/xukai871105/article/details/31008635
【1】http and ip.addr == 192.168.1.106 and tcp.port == 8080
【a】http：指定网络协议
【b】ip.addr == 192.168.1.106：指定服务器ip地址，请根据实际情况替换。
【c】tcp.port == 8080，指定端口号，请根据实际情况替换。

######
