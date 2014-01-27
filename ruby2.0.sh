#!/bin/bash
set -e
source /build/buildconfig
set -x


## Install development headers for native libraries that tend to be used often by Ruby gems.
$minimal_apt_get_install zlib1g-dev

## Ruby 2.0
$minimal_apt_get_install ruby2.0 ruby2.0-dev
gem2.0 install rake bundler compass foundation --no-rdoc --no-ri
/build/ruby-finalize.sh
