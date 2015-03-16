## how to use vagrant with rails

vagrant box add box_name path_to_rails_box
vagrant init box_name

# edit Vagrantfile
config.vm.network :private_network, ip: "192.168.33.10"

vagrant up
# vagrant ssh on linux
# putty ssh login in windows
# username and pass both are vagrant

bundle install
rake db:create db:migrate db:seed
rails server
# visit http://192.168.33.10:3000/ in your windows browser.
