# IKEv2 vpn on centos 7

## Install

```bash
sudo yum install pam-devel openssl-devel make gcc
wget https://download.strongswan.org/strongswan-5.4.0.tar.bz2
tar -xjf strongswan-5.4.0.tar.bz2

cd strongswan-5.4.0
./configure -h

# Xen or KVM
./configure --enable-eap-identity --enable-eap-md5 --enable-eap-mschapv2 --enable-eap-tls --enable-eap-ttls --enable-eap-peap --enable-eap-tnc --enable-eap-dynamic --enable-eap-radius --enable-xauth-eap --enable-xauth-pam  --enable-dhcp --enable-openssl --enable-addrblock --enable-unity --enable-certexpire --enable-radattr --enable-tools --enable-openssl --disable-gmp
make && sudo make install

# 生成根证书
ipsec pki --gen --outform pem > ca.pem
ipsec pki --self --in ca.pem --dn "C=com, O=myvpn, CN=VPN CA" --ca --outform pem > ca.cert.pem

# 生成服务器证书
ipsec pki --gen --outform pem > server.pem
ipsec pki --pub --in server.pem | ipsec pki --issue --cacert ca.cert.pem --cakey ca.pem --dn "C=com, O=myvpn, CN=139.162.4.94" --san="139.162.4.94" --flag serverAuth --flag ikeIntermediate --outform pem > server.cert.pem

# 生成客户端证书
ipsec pki --gen --outform pem > client.pem
ipsec pki --pub --in client.pem | ipsec pki --issue --cacert ca.cert.pem --cakey ca.pem --dn "C=com, O=myvpn, CN=VPN Client" --outform pem > client.cert.pem

# 生成pkcs12证书
openssl pkcs12 -export -inkey client.pem -in client.cert.pem -name "client" -certfile ca.cert.pem -caname "VPN CA"  -out client.cert.p12
123

# 安装证书
sudo cp -r ca.cert.pem /usr/local/etc/ipsec.d/cacerts/
sudo cp -r server.cert.pem /usr/local/etc/ipsec.d/certs/
sudo cp -r server.pem /usr/local/etc/ipsec.d/private/
sudo cp -r client.cert.pem /usr/local/etc/ipsec.d/certs/
sudo cp -r client.pem  /usr/local/etc/ipsec.d/private/

sudo cp -r ca.cert.pem /usr/local/etc/ipsec.d/cacerts/
sudo cp -r server.cert.pem /usr/local/etc/ipsec.d/certs/
sudo cp -r server.pem /usr/local/etc/ipsec.d/private/
sudo cp -r client.cert.pem /usr/local/etc/ipsec.d/certs/
sudo cp -r client.pem  /usr/local/etc/ipsec.d/private/

cp -r ca.cert.pem /usr/local/etc/ipsec.d/cacerts/
cp -r server.cert.pem /usr/local/etc/ipsec.d/certs/
cp -r server.pem /usr/local/etc/ipsec.d/private/
cp -r client.cert.pem /usr/local/etc/ipsec.d/certs/
cp -r client.pem  /usr/local/etc/ipsec.d/private/
```

## 配置Strongswan

```bash
sudo vim /usr/local/etc/ipsec.conf

sudo vim /usr/local/etc/strongswan.conf

sudo vim /usr/local/etc/ipsec.secrets
```

## 配置防火墙

```bash
sudo vim /etc/sysctl.conf
sudo sysctl -p
```

## iptables

```bash
sudo iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -s 10.31.0.0/24  -j ACCEPT
sudo iptables -A FORWARD -s 10.31.1.0/24  -j ACCEPT
sudo iptables -A FORWARD -s 10.31.2.0/24  -j ACCEPT
sudo iptables -A INPUT -i eth0 -p esp -j ACCEPT
sudo iptables -A INPUT -i eth0 -p udp --dport 500 -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp --dport 500 -j ACCEPT
sudo iptables -A INPUT -i eth0 -p udp --dport 4500 -j ACCEPT
sudo iptables -A INPUT -i eth0 -p udp --dport 1701 -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp --dport 1723 -j ACCEPT
sudo iptables -A FORWARD -j REJECT
sudo iptables -t nat -A POSTROUTING -s 10.31.0.0/24 -o eth0 -j MASQUERADE
sudo iptables -t nat -A POSTROUTING -s 10.31.1.0/24 -o eth0 -j MASQUERADE
sudo iptables -t nat -A POSTROUTING -s 10.31.2.0/24 -o eth0 -j MASQUERADE

sudo iptables -t nat -A POSTROUTING -s 10.31.0.0/24 -o eth0 -j SNAT --to-source 139.162.4.94
sudo iptables -t nat -A POSTROUTING -s 10.31.1.0/24 -o eth0 -j SNAT --to-source 139.162.4.94
sudo iptables -t nat -A POSTROUTING -s 10.31.2.0/24 -o eth0 -j SNAT --to-source 139.162.4.94

iptables -A INPUT -p esp -j ACCEPT
iptables -A INPUT -p udp --dport 500 -j ACCEPT
iptables -A INPUT -p udp -m udp --dport 1701 -j ACCEPT
iptables -A INPUT -p udp --dport 4500 -j ACCEPT
iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o eth0 -j MASQUERADE
iptables -A FORWARD -s 10.0.0.0/24 -j ACCEPT

sudo firewall-cmd --reload
```

## log

```bash
tail -f /var/log/strongswan-charon.log

journalctl -f
```

## References

* [UBUNTU、CENTOS搭建IPSEC/IKEV2 VPN服务器全攻略](https://quericy.me/blog/512)
* [一键搭建适用于Ubuntu/CentOS的IKEV2/L2TP的VPN](https://github.com/quericy/one-key-ikev2-vpn)
* [linux上用strongswan搭建ikev2协议vpn.md](https://gist.github.com/losisli/11081793)
* [用 strongSwan 搭建免证书的 IKEv2 VPN](http://blog.zorro.im/posts/strongswan-ikev2-for-ios-without-certificate.html)
  * [CentOS7下Strongswan架设IPSec-IKEv1, IKEv2, L2TP VPN,适用于 IOS9,OSX, Windows, Linux](http://linsir.org/post/how_to_install_IPSec_IKEV2_base_on_strongswan_with_CentOS7)
* [IPSEC VPN on Centos 7 with StrongSwan](https://raymii.org/s/tutorials/IPSEC_vpn_with_CentOS_7.html)
* [使用Strongswan搭建IPSec/IKEv2 VPN](https://hjc.im/shi-yong-strongswanda-jian-ipsecikev2-vpn/)
