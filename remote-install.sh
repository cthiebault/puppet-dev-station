#!/bin/sh

set -e
set -x

if [ -f master.zip ]; then
  rm -f master.zip
fi
if [ -d puppet-developer-laptop-master ]; then
  rm -fR puppet-developer-laptop-master
fi

wget --quiet https://github.com/cthiebault/puppet-dev-station/archive/master.zip
unzip -q master.zip
rm -f master.zip
cd puppet-dev-station-master

./install.sh

cd ..
rm -fR puppet-dev-station-master