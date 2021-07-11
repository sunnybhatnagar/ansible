Vagrant.configure("2") do |config|
config.ssh.insert_key = false
config.vm.provision "shell", path: "script.sh"
config.vm.provider :virtualbox do |vb|
  vb.memory = 2048
  vb.cpus = 2
end
# Application server 1.
config.vm.define "app1" do |app1|
  app1.vm.hostname = "app1.dev"
  app1.vm.box = "centos/7"
  app1.vm.network :private_network, ip: "192.168.3.4"
end
# Application server 2.
config.vm.define "app2" do |app2|
  app2.vm.hostname = "app2.dev"
  app2.vm.box = "centos/7"
  app2.vm.network :private_network, ip: "192.168.3.5"
end
end
