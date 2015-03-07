Vagrant.configure("2") do |config|
  config.ssh.password = "tcuser"

  config.vm.define "api" do |api|
  	api.vm.provider "docker" do |d|
  	  d.build_dir = "./api"
  	  d.name = "api"
  	  #d.expose = [8002]
  	  #d.ports = ["8002:8000"]
  	end
  end

  config.vm.define "nginx" do |nginx|
  	nginx.vm.provider "docker" do |d, override|
  	  d.name = "nginx"
  	  d.build_dir = "./nginx"
  	  d.link("api:api")
  	  d.ports = ["8001:80"]
  	  d.expose = [8001]
  	end
  end

  config.vm.provider "docker" do |docker|
  	docker.vagrant_vagrantfile = "./Vagrantfile.docker.proxy"
  end

end
