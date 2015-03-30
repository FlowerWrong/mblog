# encoding: UTF-8

require 'digest'
require 'json'
require 'nokogiri'
require 'net/http'
require 'awesome_print'
require 'net/https'
require 'uri'



home_url = 'https://mp.weixin.qq.com/'
login_url = home_url + 'cgi-bin/login'
pass = Digest::MD5.hexdigest '1*flower@wrong*1'
name = 'flowerwrong@hotmail.com'

uri = URI.parse(login_url)
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(uri.request_uri)
request.set_form_data(
  'f' => 'json',
  'imgcode' => '',
  'username' => name,
  'pwd' => pass
)
request['Referer'] = 'https://mp.weixin.qq.com/cgi-bin/loginpage?t=wxm2-login&lang=zh_CN'

response = http.request(request)
p '=' * 20
ap response['set-cookie']
login_hash = JSON.parse response.body

reg = /.*token=(\d+)\"\}/m
token = nil
if response.body =~ reg
  token = $1
end
p token
index_url = home_url + "cgi-bin/home?t=home/index&lang=zh_CN&token=#{token}"
p index_url
uri_index = URI.parse(index_url)
index_req = Net::HTTP::Get.new(uri_index.request_uri)
index_req['host'] = 'mp.weixin.qq.com'
index_req['referer'] = 'https://mp.weixin.qq.com/'
index_req['set-cookie'] = response['set-cookie']
index_req['Accept-Encoding'] = ''
res = http.request(index_req)
ap res['set-cookie']
