## [Electron](https://github.com/atom/electron)

#### [Install ejabberd from source](https://github.com/processone/ejabberd/wiki/Getting-started)

```ruby
git clone git://github.com/processone/ejabberd.git ejabberd
cd ejabberd
./autogen.sh

./configure --prefix=$HOME/my-ejabberd
make
make install

cd $HOME/my-ejabberd
sbin/ejabberdctl status/start/stop/debug/live
sbin/ejabberdctl register user domain password

vim $HOME/my-ejabberd/etc/ejabberd.yml
# http://docs.ejabberd.im/admin/guide/installation/
```

#### Install

* [yeoman](http://yeoman.io/learning/)
* [generator-electron](https://github.com/sindresorhus/generator-electron)

```ruby
npm install electron-prebuilt -g
npm install -g yo bower grunt-cli gulp
npm install --global generator-electron

yo electron
```
