# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "init.pp"
  end

  config.vm.network "forwarded_port", guest: 7474, host: 7474

end
