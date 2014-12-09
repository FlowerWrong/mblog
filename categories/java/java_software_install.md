## java based software

#### java

```bash
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

sudo apt-get install oracle-java7-set-default
```

#### [maven](http://maven.apache.org/)

```bash
# maven .bashrc
export M2_HOME=/home/yang/software/apache-maven-3.2.3
export M2=$M2_HOME/bin
export PATH=$PATH:$M2

mvn -v
```

#### [gradle](http://www.gradle.org/)

```bash
# gradle .bashrc
export GRADLE_HOME=/home/yang/software/gradle-2.2.1
export GRADLE=$GRADLE_HOME/bin
export PATH=$PATH:$GRADLE_HOME/bin

gradle -v
```

#### [tomcat](http://tomcat.apache.org/)

```bash
# tomcat .bashrc
export CATALINA_HOME=/home/yang/software/apache-tomcat-7.0.57
export CLASSPATH=.:$JAVA_HOME/lib:$CATALINA_HOME/lib
export PATH=$PATH:$CATALINA_HOME/bin

cd /home/yang/software/apache-tomcat-7.0.57/bin
sh startup.sh
sh shutdown.sh
```
