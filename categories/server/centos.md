# Centos

## docker

* [阿里云docker加速](https://yq.aliyun.com/articles/29941)
* [docker 清华大学安装加速](https://mirrors.tuna.tsinghua.edu.cn/help/docker/)
* [docker without sudo](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-centos-7)

## java

```bash
yum search java | grep jdk
yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel
dirname $(readlink $(readlink $(which java)))
sudo vim /etc/profile

#set java environment
JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.75.x86_64
JRE_HOME=$JAVA_HOME/jre
CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
export JAVA_HOME JRE_HOME CLASS_PATH PATH


sudo alternatives --config java
```

## golang

```bash
wget https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz
tar -zxvf go1.8.1.linux-amd64.tar.gz

sudo vim /etc/profile
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

go env
```


## maven 3


```bash
wget http://mirror.dsrg.utoronto.ca/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar -zxvf apache-maven-3.5.0-bin.tar.gz
cd apache-maven-3.5.0
```


```conf
export M2_HOME=/opt/apache-maven-3.5.0
export M2=$M2_HOME/bin
PATH=$M2:$PATH
export PATH


<mirror>
	<id>aliyun-maven</id>
	<mirrorOf>*</mirrorOf>
	<name>aliyun maven</name>
	<url>http://maven.aliyun.com/nexus/content/groups/public</url>
</mirror>
```

## firewalld

```bash
sudo yum install firewalld firewall-config
```

## glances

```bash
sudo yum install glances
```

## tomcat

```bash
# https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-centos-7

wget http://apache.mirror.rafal.ca/tomcat/tomcat-8/v8.5.15/bin/apache-tomcat-8.5.15.tar.gz
tar -zxvf apache-tomcat-8.5.15.tar.gz
sudo chgrp -R usergroup apache-tomcat-8.5.15

sudo chmod -R g+r conf
sudo chmod g+x conf

sudo chown -R user webapps/ work/ temp/ logs/

sudo vi /etc/systemd/system/tomcat.service

sudo systemctl daemon-reload
sudo systemctl start tomcat

sudo vi /opt/tomcat/conf/tomcat-users.xml
sudo vi /opt/tomcat/webapps/manager/META-INF/context.xml
sudo vi /opt/tomcat/webapps/host-manager/META-INF/context.xml

sudo systemctl restart tomcat
```

```conf
# Systemd unit file for tomcat
[Unit]
Description=Apache Tomcat Web Application Container
After=syslog.target network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/jre
Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat
Environment=CATALINA_BASE=/opt/tomcat
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/bin/kill -15 $MAINPID

User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target



<tomcat-users>
    <user username="admin" password="password" roles="manager-gui,admin-gui"/>
</tomcat-users>
```

## nginx [how-to-install-nginx-on-centos-7](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-centos-7)

```bash
# sudo yum install epel-release
# sudo yum install nginx

# http://nginx.org/en/linux_packages.html
sudo vim /etc/yum.repos.d/nginx.repo
sudo yum install nginx
```

## redis

```bash
sudo yum install redis -y
```

## oh my zsh

```bash
sudo yum install zsh -y
cat /etc/shells
echo $SHELL

chsh -s /bin/zsh  # 注意，此处不需要root权限，不需要在前面加sudo
sudo reboot

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo yum install autojump autojump-zsh -y
vim ~/.zshrc
source ~/.zshrc
plugins=(git autojump systemd yum wd common-aliases)
```

## consul-template

```bash
# https://releases.hashicorp.com/consul-template/
wget https://releases.hashicorp.com/consul-template/0.18.3/consul-template_0.18.3_linux_amd64.tgz
```
