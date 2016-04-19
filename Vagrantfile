# vim: ft=ruby:


Vagrant.configure(2) do |config|

  config.vm.define "lain_demo" do |lain_demo|
    lain_demo.vm.box = "laincloud/lain-demo"
    lain_demo.vm.box_url = [
      "http://10.106.170.108/lain-bootstrapped-node1-1461052316.box"
    ]
    lain_demo.vm.box_download_checksum_type = "sha256"
    lain_demo.vm.box_download_checksum = "a458b2aabb2685d116d1865f03f61e8dd7256244726a1267e47086fe640b58be"
    lain_demo.vm.hostname = "lain-demo"

    lain_demo.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end

    lain_demo.vm.network "private_network", ip: "192.168.77.21"

    config.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "recovery.yaml"
      ansible.install = false
    end

  end

end
