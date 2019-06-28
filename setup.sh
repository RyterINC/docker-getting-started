#!/bin/bash

# uninstall docker
yum remove docker \
           docker-client \
           docker-client-latest \
           docker-common \
           docker-latest \
           docker-latest-logrotate \
           docker-logrotate \
           docker-engine

# Install required packages
yum install -y yum-utils \
    device-mapper-persistent-data \
    lvm2

# Setup the stable repository
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# install latest version of Docker-ce
yum install -y docker-ce docker-ce-cli containerd.io

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Verify docker is installed
docker --version
docker-compose version

# Install pip and dependencies
yum install python-devel python-setuptools python-pip
pip install --upgrade pip

# install virtualenv
pip install virtualenv

# verify
pip --version
virtualenv --version
