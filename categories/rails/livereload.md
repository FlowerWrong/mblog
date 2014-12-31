# live reload

### add gem guard-livereload and rack-livereload

```ruby
group :development do
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
end
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
