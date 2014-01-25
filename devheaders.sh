#!/bin/bash
set -e
source /build/buildconfig
set -x

## Install development headers for native libraries that tend to be used often by Ruby gems.

# For all kinds of stuff.
$minimal_apt_get_install zlib1g-dev
