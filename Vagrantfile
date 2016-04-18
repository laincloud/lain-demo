# vim: ft=ruby:


Vagrant.configure(2) do |config|

  config.vm.define "lain_demo" do |lain_demo|
    lain_demo.vm.box = "lain-bootstrapped-node1-1460969847"
    #lain_demo.vm.box_url = [""]
    #lain_demo.vm.box_download_checksum_type = 'sha256'
    #lain_demo.vm.box_download_checksum = ''
    lain_demo.vm.hostname = "lain-demo"

    lain_demo.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end

    lain_demo.vm.network "private_network", ip: "192.168.77.21"

    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "recovery.yaml"
    end

  end

end
