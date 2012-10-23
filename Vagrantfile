# VM automatica para mongodb

# Todos los parametros son opcionales
memory = 1024
#cpus = 2

# IP Para :hostonly networking (solo accesible desde el desktop pero no desde la red)
#ip = "10.11.12.13"
# Direccion MAC para :bridged networking (la VM pilla IP por DHCP y es accesible via red)
#mac = "BEBEBEEFDEAD"
vmname = "mongo.forest.drslump.org"
vmhostname = "mongo"

# Levantamos la VM
Vagrant::Config.run do |vmconfig|
  vmconfig.vm.define vmname do |config|
    config.vm.box = "precise64"
    config.vm.host_name = vmhostname
    config.vm.network :bridged, { :mac => mac } if defined? mac
    config.vm.network :hostonly, ip if defined? ip
    config.vm.customize ["modifyvm", :id, "--memory", memory] if defined? memory
    config.vm.customize ["modifyvm", :id, "--cpus", cpus] if defined? cpus
#    config.vm.provision :puppet, :module_path => "puppet/modules" do |puppet|
#      puppet.manifests_path = "puppet/manifests"
#      puppet.manifest_file  = "base.pp"
#    end
  end
end
