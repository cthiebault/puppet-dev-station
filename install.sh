#!/bin/bash

# test for puppet
dpkg -s puppet >/dev/null
if [ $? -ne 0 ]; then
   echo "Installing puppet ..."
   sudo apt-get -y install puppet
fi

sudo FACTER_home=$HOME FACTER_real_id=`whoami` puppet apply --modulepath=modules init.pp