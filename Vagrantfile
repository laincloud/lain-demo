# vim: ft=ruby:


Vagrant.configure(2) do |config|

  config.vm.define "lain_demo" do |lain_demo|
    lain_demo.vm.box = "laincloud/lain-demo"
    lain_demo.vm.box_url = [
      "http://10.106.170.108/lain-bootstrapped-node1-1460969847.box"
    ]
    lain_demo.vm.box_download_checksum_type = "sha256"
    lain_demo.vm.box_download_checksum = "4c3bd2e0e200d06e2d1c3c81428598fd10ebf16c59ce73f8d78f80c3862c8a5d"
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
