# gitlab config in ubuntu

### [install link](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/install/installation.md)


```ruby
sudo update-alternatives --set editor /usr/bin/vim.basic
sudo apt-get install -y build-essential zlib1g-dev libyaml-dev libssl-dev libgdbm-dev libreadline-dev libncurses5-dev libffi-dev curl openssh-server redis-server checkinstall libxml2-dev libxslt-dev libcurl4-openssl-dev libicu-dev logrotate python-docutils pkg-config cmake nodejs
# sudo apt-get install libkrb5-dev
sudo apt-get install -y git-core
git --version

sudo apt-get install -y postfix

# install ruby
sudo apt-get remove ruby1.8

mkdir /tmp/ruby && cd /tmp/ruby
curl -L --progress http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.6.tar.gz | tar xz
cd ruby-2.1.6
./configure --disable-install-rdoc
make
sudo make install

sudo gem install bundler --no-ri --no-rdoc

# install mysql
# https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/install/database_mysql.md
```
