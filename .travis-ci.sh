#!/bin/sh

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get -qq update
sudo apt-get -qq install gcc-4.8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 90

wget http://mirrors.kernel.org/ubuntu/pool/main/b/binutils/binutils_2.24-5ubuntu3.1_amd64.deb
sudo dpkg -i binutils_2.24-5ubuntu3.1_amd64.deb

bash -ex .travis-opam.sh
