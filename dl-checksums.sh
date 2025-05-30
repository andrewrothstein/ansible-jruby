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

dl_ver ${1:-10.0.0.0}
