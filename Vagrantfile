Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "app" do |app|
    app.vm.box = "ubuntu-jammy"
    app.vm.provision :docker
    app.vm.provision :docker_compose
    app.vm.network "forwarded_port", guest: 3000, host: 3000
    app.vm.network "forwarded_port", guest: 80, host: 80
    app.vm.network "private_network", ip: "192.168.50.2"
    app.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    app.vm.provision "shell" do |shell|
      shell.path = "slave-setup.sh"
    end
  end

  config.vm.define "jenk" do |jenk|
    jenk.vm.box = "ubuntu-jammy"
    jenk.vm.network "forwarded_port", guest: 8080, host: 8080
    jenk.vm.network "private_network", ip: "192.168.50.3"
    jenk.vm.provider "virtualbox" do |vbm|
      vbm.memory = "4096"
      vbm.cpus = 2
      vbm.gui = false
    end 
    jenk.vm.provision "shell" do |shell|
      shell.path = "jenkins.sh"
    end
  end
end
