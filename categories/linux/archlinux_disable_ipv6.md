1. sysctl.conf not work

```
# Disable IPv6
net.ipv6.conf.all.disable_ipv6 = 1

net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
net.ipv6.conf.enp3s0.disable_ipv6 = 1
```

`sudo sysctl -p /etc/sysctl.conf`

2. /etc/hosts not work

3. curl

```
alias curl="/usr/bin/curl -4"
```

4. ssh /etc/ssh/ssh_config

```
Host *
  AddressFamily inet
```
