require 'json'
require 'net/http'
require 'awesome_print'
require 'mechanize'

# http://movie.douban.com/j/cinemas/?city_id=118281&limit=5
def spider_cinemas(city_id, limit = 10)
  uri = URI("http://movie.douban.com/j/cinemas/?city_id=#{city_id}&limit=#{limit}")
  res_str = Net::HTTP.get(uri)
  res_hash = JSON.parse res_str
  ap res_hash
end
# spider_cinemas(118281, 5)

def cities
  @base_url = 'http://movie.douban.com'
  @agent = Mechanize.new
  page = @agent.get("#{@base_url}/nowplaying/guangzhou/").search('div.cities-list-item')
  cities = []
  page.search('a.city-item').each do |link|
    city_name = link.text.strip
    city_id = link['id']
    city_enname = link['uid']
    cities << { name: city_name, id: city_id, enname: city_enname }
  end
  ap cities
  cities
end
cities
