# Centos

## docker

* [阿里云docker加速](https://yq.aliyun.com/articles/29941)
* [docker 清华大学安装加速](https://mirrors.tuna.tsinghua.edu.cn/help/docker/)

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

## maven


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
