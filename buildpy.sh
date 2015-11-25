#!/bin/bash

cd
wget https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tar.xz

mkdir ~/dist
cd ~/dist
tar xJf ~/Python-3.5.0.tar.xz
cd Python-3.5.0
./configure --prefix=/home/vagrant/py35/dist && \
make && make install

mkdir ~/patch
cd ~/patch
tar xJf ~/Python-3.5.0.tar.xz
cd Python-3.5.0
patch -p1 < /vagrant/fstat-failure.patch
./configure --prefix=/home/vagrant/py35/patch && \
make && make install

