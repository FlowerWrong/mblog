require 'webrick'
require 'webrick/httpproxy'

# Apache compatible Password manager
htpasswd = WEBrick::HTTPAuth::Htpasswd.new File.expand_path('../htpasswd', __FILE__)
# Create entry with username and password, the password is "crypt" encrypted
htpasswd.set_passwd 'Proxy Realm', 'yang', 'yang'
# Write file to disk
htpasswd.flush

authenticator = WEBrick::HTTPAuth::ProxyBasicAuth.new(
  Realm: 'Proxy Realm',
  UserDB: htpasswd
)

proxy = WEBrick::HTTPProxyServer.new Port: 8080, ProxyAuthProc: authenticator.method(:authenticate).to_proc

trap 'INT'  do proxy.shutdown end
trap 'TERM' do proxy.shutdown end

proxy.start
