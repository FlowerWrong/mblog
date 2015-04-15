FROM ubuntu:14.04

ADD ./sources.list /etc/apt/sources.list

RUN apt-get update -y

# remove several traces of debian python
RUN apt-get purge -y python*

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

ENV PYTHON_VERSION 2.7.6

RUN apt-get install --no-install-recommends -y -q build-essential python2.7 python2.7-dev python-pip
RUN pip install -U pip
RUN /usr/local/bin/pip install virtualenv
RUN apt-get install -y libmysqlclient-dev

ADD . /code
WORKDIR /code
RUN /usr/local/bin/pip install -r requirements.txt

CMD ["python", "app.py"]
