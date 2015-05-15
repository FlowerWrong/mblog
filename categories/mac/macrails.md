## Mac development with rails

#### Install Xcode from apple store

#### Install [rvm](http://rvm.io)

#### Install ruby

```ruby
rvm -v
rvm install 2.1.6
rvm use 2.1.6 --default
ruby -v
```

#### Install [HomeBrew](http://brew.sh)--The missing package manager for OS X

```ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Install [Cask](https://github.com/caskroom/homebrew-cask)--Homebrew-cask provides a friendly homebrew-style CLI workflow for the administration of Mac applications distributed as binaries.

```ruby
brew install caskroom/cask/brew-cask
```

#### Install mysql, atom, sublime, java... with homebrew and cask

```ruby
brew install mysql
# mysql.service start
# note: Mysql defautl root password is ''

brew cask install java
brew cask install sublime-text
brew cask install atom

# if you need install other software, just search it
brew search google-chrome
brew cask install google-chrome
```

#### [Config github ssh keygen](https://help.github.com/articles/generating-ssh-keys/)

#### [Mac keyboard shortcuts](https://support.apple.com/en-us/HT201236)