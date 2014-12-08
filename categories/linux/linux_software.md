## linux software

#### 一. [搜狗拼音输入法/sougou pinyin](http://pinyin.sogou.com/linux/?r=pinyin)

#### 二. [atom](https://atom.io/) or [sublime text 3](http://www.sublimetext.com/3) editor

```ruby
# sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
# remove sublime text3
sudo apt-get remove sublime-text-installer

# atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
```

#### 三. [git](http://git-scm.com/)

```ruby
sudo apt-get install git
```

#### 四. [ubuntu-tweak](http://ubuntu-tweak.com/)

```ruby
sudo add-apt-repository ppa:tualatrix/ppa
sudo apt-get update
sudo apt-get install ubuntu-tweak

# 移除
sudo apt-get remove --purge ubuntu-tweak
# 使用下面的命令去除PPA：
sudo apt-get install ppa-purge
sudo ppa-purge ppa:tualatrix/ppa
```

#### 五. chrome browser

```ruby
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update

# 安装稳定版Chrome(推荐)，在终端输入：
sudo apt-get install google-chrome-stable
# 安装Beta版Chrome，在终端输入：
sudo apt-get install google-chrome-beta
# 安装不稳定版Chrome，在终端输入：
sudo apt-get install google-chrome-unstable
```

#### 六. java 7
```ruby
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

sudo apt-get install oracle-java7-set-default
```

#### 七. vim editor

```ruby
# https://github.com/FlowerWrong/fw-vim
```

#### 八. [webstorm](http://www.jetbrains.com/webstorm/) for 前端开发

#### 九. [rubymine](http://www.jetbrains.com/ruby/) for ruby

#### 十. [ruby](https://www.ruby-lang.org/en/), [rails](http://rubyonrails.org/), [nodejs](http://www.nodejs.org/), [imagemagick](http://www.imagemagick.org/) and mysql

###### 1. install rvm

```ruby
sudo apt-get install curl # install curl
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm -v
```

###### 2. install ruby 2.1.5

```ruby
rvm install 2.1.5

# On ubuntu, you need `bash --login` to use rvm. To resolve:
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc

rvm use --default 2.1.5 # set to default
ruby -v
gem -v
```

###### 3. replace gem source to tabao.org

```ruby
gem source -r https://rubygems.org/
gem source -a https://ruby.taobao.org
```

###### 4. install latest rails

```ruby
gem install rails
rails -v
```

###### 5. install nodejs via ppa

```ruby
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
node -v
```

###### 6. install mysql

```ruby
netstat -tap | grep mysql # 检查是否已经安装mysql
sudo apt-get install libmysqlclient-dev # 安装依赖
sudo apt-get install mysql-server mysql-client
sudo service start|stop|restart|reload|force-reload|status
```

###### 7. install imagemagick
```ruby
# 用于图片裁剪等
sudo apt-get install imagemagick
```

#### 十一. 禁止软件开发启动

```ruby
ls /etc/rc*
# 对于以K开头的文件，系统将终止对应的服务；
# 对于以S开头的文件，系统将启动对应的服务；
# Ubuntu默认是在runlevel 2启动的，那么我们之需要修改rc2.d中的文件
sudo apt-get install sysv-rc-conf
cd /etc
# 打开工具
sudo sysv-rc-conf
# 打X的即表示运行在对应Runlevel时开机启动的服务，按空格进行将启动项反选，按q退出之后配置即完成
```
