# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.box = "centos7.2"
  
  config.vm.define :master01 do |node|
    node.vm.network :private_network, ip:"192.168.122.71"
  end
  
  config.vm.define :node01 do |node|
    node.vm.network :private_network, ip:"192.168.122.72"
  end
  
  config.vm.define :node02 do |node|
    node.vm.network :private_network, ip:"192.168.122.73"
  end
  
  config.vm.define :controller do |node|
    node.vm.network :private_network, ip:"192.168.122.70"
  
    node.vm.provision "ansible_local" do |ansible|
      ansible.provisioning_path = "/vagrant/provision"
      ansible.playbook = "k8s.yml"
      ansible.verbose = true
      ansible.install = true
      ansible.limit = "all" # or only "nodes" group, etc.
      ansible.inventory_path  = "inventory"
    end
  end
  
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 1
    vb.memory = 1024
  end
  
end
