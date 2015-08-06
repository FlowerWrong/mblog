require 'net/http'
require 'time'

st = Time.now

count = 0
arr = []

10.times do |i|
  arr[i] = Thread.new {
    1.upto(100).each do |i|
      uri = URI('http://movie.douban.com/j/cinemas/?city_id=118281&limit=10')
      res = Net::HTTP.get_response(uri)
      if res.code == '403'
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
