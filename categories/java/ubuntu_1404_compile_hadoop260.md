## compile hadoop 2.6.0 on ubuntu 14.04

#### 安装需要的软件

1. 查看`BUILDING.txt`
2. 安装`jdk7`
3. 安装`maven3`
4. 安装`cmake`
        sudo apt-get install cmake
5. 安装`protofub2.5`

6. 安装`ant`

7. 安装`findbugs`

8. 安装其他依赖
        sudo apt-get install zlib1g-dev
        sudo apt-get install libssl-dev
9. `mvn clean package -Pdist,native -DskipTests -Dtar`
