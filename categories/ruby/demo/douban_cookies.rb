
10.times do
  res = `proxychains4 curl -I 'http://movie.douban.com/nowplaying/guangzhou/'`
  reg = /.*Set\-Cookie:\s+bid=\"(.*)\";\s+path=.*/m
  if res =~ reg
    bid = $1
    p bid
  else
    p res
  end
  sleep 5
end