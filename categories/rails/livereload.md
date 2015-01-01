# [live reload](https://github.com/guard/guard-livereload)

### add gem guard-livereload and rack-livereload

```ruby
group :development do
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
end

bundle install

# create the guardfile
guard init livereload
```

### config rack middleware

```ruby
# config/environments/development.rb
config.middleware.use Rack::LiveReload
```

### start the both servers

```ruby
guart start
rails s
```
