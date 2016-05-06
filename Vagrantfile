# vim: ft=ruby:


Vagrant.configure(2) do |config|

  config.vm.define "lain_demo" do |lain_demo|
    lain_demo.vm.box = "laincloud/lain-demo"
    lain_demo.vm.hostname = "lain-demo"

    lain_demo.vm.provider "virtualbox" do |v|
      v.memory = 2048
    end

    lain_demo.vm.network "private_network", ip: "192.168.77.21"

    config.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "recovery.yaml"
      ansible.install = false
    end

  end

end
