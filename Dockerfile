FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y wget make gcc gettext ntfs-3g

ENV APP_HOME /app
RUN mkdir -p $APP_HOME

WORKDIR $APP_HOME
RUN wget http://vorboss.dl.sourceforge.net/project/ms-sys/ms-sys%20stable/2.4.1/ms-sys-2.4.1.tar.gz && tar -xvf ms-sys-2.4.1.tar.gz && cd ms-sys-2.4.1 && make install
