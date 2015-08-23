## XMPP

* [三个XML节（stanza） --> <iq>,<message>以及<presence>](http://my.oschina.net/u/1263964/blog/179909)
* [smack 对象](http://blog.csdn.net/majian_1987/article/details/9930765)


#### Ejabberd register config

```ruby
ip_access: trusted_network

##
## Local c2s or remote s2s users cannot register accounts
##
## access_from: deny

# access: register  # Note this
access_from: register  # Note this
```
