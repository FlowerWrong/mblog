# encoding: UTF-8

require 'net/http'

module HTTPStuff
	def self.post(path, payload)
		uri = construct_uri path
		http = Net::HTTP.new(uri.host, uri.port)
		req = Net::HTTP::Post.new(uri.path)
		req.body = payload.to_json
		req["Authorization"] ='SOMEAUTH'
		req["Content-Type"] = "application/json"
		print http.request(req)
	end

	def self.construct_uri(path)
		return URI.parse("http://localhost:10000/" + path)
	end

	def self.get(path)
		uri = construct_uri path
		http = Net::HTTP.new(uri.host, uri.port)
		req = Net::HTTP::Get.new(uri.path)
		req["Authorization"] ='SOMEAUTH'
		print http.request(req)
	end

	def self.print(response)
		begin
			puts JSON.pretty_generate(JSON.parse(response.body))
		rescue
			puts response
		end
	end
end
