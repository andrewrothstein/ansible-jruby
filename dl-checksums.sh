#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://s3.amazonaws.com/jruby.org/downloads

dl_ver() {
    local ver=$1
    local url=$MIRROR/$ver/jruby-bin-${ver}.tar.gz.sha256

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(curl -sSLf $url)
}

dl_ver 9.4.2.0
dl_ver 9.4.3.0
dl_ver 9.4.4.0
dl_ver 9.4.5.0
dl_ver 9.4.6.0
dl_ver 9.4.7.0
dl_ver 9.4.8.0
dl_ver 9.4.9.0
dl_ver 9.4.10.0
dl_ver ${1:-9.4.11.0}
