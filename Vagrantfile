# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu-14.04-64-puppet"
  config.vm.box_url = "https://vagrantcloud.com/puppetlabs/boxes/ubuntu-14.04-64-puppet/versions/1/providers/virtualbox.box"

  # need to install vagrant-proxyconf if Vagrant is running behind firewall
  # vagrant plugin install vagrant-proxyconf
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://10.56.140.96:3128"
    config.proxy.https    = "http://10.56.140.96:3128"
    config.proxy.no_proxy = "localhost,127.0.0.1"
  end

  # Use puppet provisionner to configure everything else
  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "."
    puppet.manifest_file  = "init.pp"
    puppet.options = "-v -d"
    puppet.facter = {
      "vagrant_box" => true,
      "home" => "/home/cthiebault",
      "real_id" => "cthiebault"
      }
  end

end

