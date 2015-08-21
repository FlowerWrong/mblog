## Ejeabberd

### [Install ejabberd from source code](http://docs.ejabberd.im/admin/guide/installation/#installing-ejabberd-from-source-code), [dev box](https://github.com/processone/ejabberd-vagrant-dev)

```ruby
./autogen.sh
./configure --enable-mysql --enable-tools
make
sudo make install
```

* Install the configuration files in /etc/ejabberd/
* Install ejabberd binary, header and runtime files in /lib/ejabberd/
* Install the administration script: /sbin/ejabberdctl
* Install ejabberd documentation in /share/doc/ejabberd/
* Create a spool directory: /var/lib/ejabberd/
* Create a directory for log files: /var/log/ejabberd/

```ruby
sudo ejabberdctl start
sudo ejabberdctl status
sudo ejabberdctl stop
```

```ruby
sudo make uninstall
# 
```


### Enable register

```ruby
sudo vim /etc/ejabberd/ejabberd.yml
# /register
register: true
```

### 名词

* roster -> 好友列表
* VCard -> 用户信息
* XMPP定义了三种顶级XML节 -> <iq /> <message /> <presence />