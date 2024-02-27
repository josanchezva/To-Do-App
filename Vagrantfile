Vagrant.configure("2") do |config|

  config.vm.define "developmentVM" do |developmentVM|
    developmentVM.vm.box = "ubuntu-jammy"
    developmentVM.vm.provision :docker
    developmentVM.vm.provision :docker_compose
    developmentVM.vm.network "forwarded_port", guest: 80, host: 80
    developmentVM.vm.network "private_network", ip: "192.168.50.2"
    developmentVM.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    developmentVM.vm.provision "shell" do |shell|
      shell.path = "slave-setup.sh"
    end
  end

  config.vm.define "deploymentVM" do |deploymentVM|
    deploymentVM.vm.box = "ubuntu-jammy"
    deploymentVM.vm.provision :docker
    deploymentVM.vm.provision :docker_compose
    deploymentVM.vm.network "forwarded_port", guest: 80, host: 81
    deploymentVM.vm.network "private_network", ip: "192.168.50.4"
    deploymentVM.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    deploymentVM.vm.provision "shell" do |shell|
      shell.path = "slave-setup.sh"
    end
  end

  config.vm.define "jenkinsMainVM" do |jenkinsMainVM|
    jenkinsMainVM.vm.box = "ubuntu-jammy"
    jenkinsMainVM.vm.network "forwarded_port", guest: 8080, host: 8080
    jenkinsMainVM.vm.network "private_network", ip: "192.168.50.3"
    jenkinsMainVM.vm.provider "virtualbox" do |vbm|
      vbm.memory = "4096"
      vbm.cpus = 2
      vbm.gui = false
    end 
    jenkinsMainVM.vm.provision "shell" do |shell|
      shell.path = "jenkins.sh"
    end
  end
end