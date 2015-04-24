FROM ubuntu:14.04
ADD sources/aliyun/sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y build-essential libmysqlclient-dev

RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common

RUN apt-add-repository -y ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get install -y ruby2.1 ruby2.1-dev

RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

RUN apt-get install -y imagemagick

RUN gem source -r https://rubygems.org/
RUN gem source -a https://ruby.taobao.org

# skip installing gem documentation
RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"

RUN gem install bundler

RUN mkdir /railsapp
WORKDIR /railsapp
VOLUME /railsapp
