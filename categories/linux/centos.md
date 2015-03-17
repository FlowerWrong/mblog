## centos 6.3 log

```ruby
# add user
adduser yang
passwd yang
# 赋予root权限
# 修改/etc/sudoers 文件，找到下面一行，在root下面添加一行，如下所示：
## Allow root to run any commands anywhere
root    ALL=(ALL)     ALL
tommy   ALL=(ALL)     ALL
# 修改完毕，现在可以用tommy帐号登录，然后用命令su – ，即可获得root权限进行操作。

# install mysql
rpm -ql mysql
yum install mysql
rpm -ql mysql-server
yum install mysql-server
service mysqld start

# install java
java -version

# install tomcat
rpm -ql tomcat6
yum install tomcat6 tomcat6-webapps tomcat6-admin-webapps
service tomcat6 start
# 安装tomcat6默认目录在/usr/share/tomcat6/下
# 配置文件默认目录在/etc/tomcat6/下

# 8080 端口问题
ps -ef | grep tomcat
netstat -an | grep 8080
service iptables stop
vi /etc/sysconfig/iptables
# vi yy and p and change 22 to 8080
service iptables start
service iptables status

# install svnserver
yum install subversion
svnserve --version
mkdir -p /opt/svn/repos
svnadmin create /opt/svn/repos
cd /opt/svn/repos/conf
vi passwd
vi authz
vi snvserv.conf

svnserve -d -r /opt/svn/repos
# 开放 3690
```
