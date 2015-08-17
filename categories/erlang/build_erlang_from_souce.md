## Build erlang from source

* [erlang install](http://www.erlang.org/doc/installation_guide/INSTALL.html)

```ruby
# Download from https://github.com/erlang/otp/releases
tar -zxf otp_src_18.0.tar.gz
cd otp_src_18.0
export ERL_TOP=`pwd`

./otp_build autoconf
./configure --prefix=/opt/erlang/18.0
make
sudo make install

vim ~/.zshrc
# add /opt/erlang/17.5.6.2/bin to path
```

##### Build doc

```ruby
cd $ERL_TOP
./configure
export PATH=$ERL_TOP/bin:$PATH
make docs
sudo make install-docs

erl -man mnesia
```