#!/bin/bash

clone=1
host="0.0.0.0"
port=4000

while [ $# -gt 0 ] ; do
  case $1 in
    -n | --not-clone) clone=0 ; shift 1 ;;
    -o | --host) host="$2" ; shift 2 ;;
    -p | --port) port=$2 ; shift 2 ;;
    *) shift 1 ;;
  esac
done

if [ $clone == 1 ] ; then
  git clone https://github.com/yamishi13/blog.git /jekyll/src/
fi

jekyll serve --watch -H $host -P $port
