# java base software log

##### java 7/8

```ruby
# install java 7
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
sudo apt-get install oracle-java7-set-default

# install java 8
sudo apt-get remove oracle-java7-installer
sudo apt-get update
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install Oracle-java8-installer
sudo apt-get install oracle-java8-set-default

# 切换为 Java 7 ：
sudo update-java-alternatives -s java-7-oracle

# 切换为 Java 8：
sudo update-java-alternatives -s java-8-oracle
```

##### [maven 3](http://maven.apache.org/)

```ruby
# maven config in .bashrc
tar -zxcf xxx
export M2_HOME=/home/yang/software/apache-maven-3.3.1
export M2=$M2_HOME/bin
export PATH=$PATH:$M2

mvn -v
```

##### [gradle 2](http://www.gradle.org/)

```ruby
# gradle config in .bashrc
export GRADLE_HOME=/home/yang/software/gradle-2.3
export GRADLE=$GRADLE_HOME/bin
export PATH=$PATH:$GRADLE_HOME/bin

gradle -v
```

##### [tomcat 8](http://tomcat.apache.org/)

```ruby
# tomcat config in .bashrc
export CATALINA_HOME=/home/yang/software/apache-tomcat-8.0.20
export CLASSPATH=.:$JAVA_HOME/lib:$CATALINA_HOME/lib
export PATH=$PATH:$CATALINA_HOME/bin

cd /home/yang/software/apache-tomcat-7.0.57/bin
sh startup.sh
sh shutdown.sh
```

##### [eclipse](http://www.eclipse.org/downloads/)

##### [idea](http://www.jetbrains.com/idea/)

##### [android studio]()
