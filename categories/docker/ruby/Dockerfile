From registry.mirrors.aliyuncs.com/library/ubuntu:14.04

RUN apt-get update
RUN apt-get install -y build-essential libmysqlclient-dev

RUN apt-get install -y curl
RUN curl -L https://get.rvm.io | bash -s stable
RUN source ~/.rvm/scripts/rvm
RUN rvm install 2.1.6
RUN rvm use --default 2.1.6

RUN apt-get install -y nodejs
RUN apt-get install -y imagemagick

# skip installing gem documentation
RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"

RUN gem install bundler

RUN mkdir /railsapp
WORKDIR /railsapp
VOLUME /railsapp
