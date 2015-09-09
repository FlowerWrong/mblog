require 'net/http'
require 'time'

st = Time.now

count = 0
arr = []

10.times do |i|
  arr[i] = Thread.new {
    1.upto(100).each do |i|
      uri = URI('http://www.wepiao.com/film_ajax.html')
      http = Net::HTTP.new(uri.host, 80)
      request = Net::HTTP::Get.new(uri.request_uri)
      request['Cookie'] = 'bid=VavYxjIPGEE'
      res = http.request(request)
      # res = Net::HTTP.get_response(uri)
      if res.code == '403' || res.code == '404'
        p res.body
        Thread.kill(Thread.current)
        break
      end
      p res.code
      p i
      count += 1
    end
  }
end

arr.each { |t| t.join }
puts "count = #{count}"

et = Time.now

p et - st
