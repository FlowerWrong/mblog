## 多个域名指向同一个的vhost配置

```ruby
# 启用 rewrite 模块
sudo a2enmod rewrite

# www.thecampus.cc.conf
<VirtualHost *:80>
    ServerAdmin admin@yidaxue.com
    DocumentRoot "/home/ubuntu/www/one_campus/public"
    <Directory "/home/ubuntu/www/one_campus/public">
        Order allow,deny
        allow from all
    </Directory>
    RewriteEngine On
    RewriteCond "%{HTTP_HOST}" "!^www.yidaxue.com" [NC]
    RewriteRule "^(.*)$" http://www.yidaxue.com/ [L]
    ServerName www.yidaxue.com
    ServerAlias www.thecampus.cc
    ServerAlias yidaxue.com
    ErrorLog "/var/log/yidaxue.error_log"
    CustomLog "/var/log/yidaxue.access_log" "%v %h %l %u %t \"%r\" %>s %b"
</VirtualHost>

sudo a2ensite www.thecampus.cc.conf # 启用
```
