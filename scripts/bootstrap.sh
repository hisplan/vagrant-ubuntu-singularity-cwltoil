#!/bin/bash

apt-get update -y

# install python2.7 and pip
apt-get install -y python
apt-get install -y python-pip
pip install --upgrade pip

# install development tools
apt-get -y install build-essential curl git sudo man vim autoconf automake libtool debootstrap

# install toil+cwl
pip install toil[aws,cwl]

# install sigularity
git clone https://github.com/gmkurtzer/singularity.git
cd singularity
./autogen.sh
./configure --prefix=/usr/local
make
make install

