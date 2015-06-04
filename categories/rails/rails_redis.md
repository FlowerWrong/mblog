# Integrate redis with rails

### Install redis

```ruby
sudo apt-get install redis-server
```

### Use redis gems you need

```ruby
# redis
gem 'redis'
gem 'hiredis'
# gem 'redis-namespace'
# gem 'redis-objects'
```

### Init redis with redis.yml

```ruby
default:
  host: localhost
  port: 6379
  driver: hiredis

development:
  db: 0
  namespace: movie_together_development

test:
  db: 1
  namespace: movie_together_test

production:
  db: 2
  host: 127.0.0.1
  namespace: movie_together_production
```

### Init redis instance with redis.rb

```ruby
# redis conig
REDIS_CONFIG = YAML.load(File.open(Rails.root.join('config/redis.yml'))).symbolize_keys
default_config = REDIS_CONFIG[:default].symbolize_keys
redis_config = default_config.merge(REDIS_CONFIG[Rails.env.to_sym].symbolize_keys) if REDIS_CONFIG[Rails.env.to_sym]

$redis = Redis.new(redis_config)
# $namespaced_redis = Redis::Namespace.new(redis_config[:namespace], redis: $redis) if redis_config[:namespace]

# To clear out the db before each test
begin
  $redis.flushdb if Rails.env == 'test'
  $redis.flushdb if Rails.env == 'development'
rescue Exception => e
  p '-' * 20
  p "Error trying with $redis.flushdb: #{e.message}"
  p 'You many need to start the redis-server with `sudo service redis-server start`'
  p 'If the redis-server is not installed, please `sudo apt-get install redis-server`.'
  p '-' * 20
  # ps aux | grep rails
  process_id = `/bin/ps -fu $USER| grep "rails" | grep -v "grep" | awk '{print $2}'`
  rails_pid = process_id.split("\n")[0]
  cmd = "kill -SIGINT #{rails_pid}"
  `#{cmd}`
end
```
