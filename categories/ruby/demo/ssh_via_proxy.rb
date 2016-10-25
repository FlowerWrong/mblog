require 'net/ssh'
require 'net/ssh/proxy/http'

proxy = Net::SSH::Proxy::HTTP.new('proxy server', 8080, :user => "username", :password => "pass")
Net::SSH.start('domain', 'user', :proxy => proxy) do |ssh|
  ssh.exec!("hostname")
  ssh.exec!("ls -al")
end
