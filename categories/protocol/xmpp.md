## XMPP

* [三个XML节（stanza） --> <iq>,<message>以及<presence>](http://my.oschina.net/u/1263964/blog/179909)
* [smack 对象](http://blog.csdn.net/majian_1987/article/details/9930765)
* [How to Add and Subscribe a jabber entry to my XMPP Account?](http://stackoverflow.com/questions/13062356/how-to-add-and-subscribe-a-jabber-entry-to-my-xmpp-account)
* [how-to-send-and-receive-friend-request-to-xmpp-server-using-smack-api](http://w3facility.org/question/how-to-send-and-receive-friend-request-to-xmpp-server-using-smack-api/)
* [why getRosters is empty](http://stackoverflow.com/questions/7170161/problem-with-smack-in-facebook-chat-app-for-android-connection-getroster-gete)

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
