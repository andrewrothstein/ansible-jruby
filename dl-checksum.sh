#!/usr/bin/env sh
VER=9.2.8.0
DIR=~/Downloads
MIRROR=https://s3.amazonaws.com/jruby.org/downloads/${VER}
URL=$MIRROR/jruby-bin-${VER}.tar.gz.sha256

printf "  # %s\n" $URL
printf "  '%s': sha256:%s\n" $VER $(curl -sSL $URL)
