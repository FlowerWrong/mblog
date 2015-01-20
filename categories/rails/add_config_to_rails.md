## Add custom configure to rails.

```ruby
# config/application.rb
module ProjectName
  class Application < Rails::Application
    config.before_initialize do
      ENV['KEY'] = VALUE
    end
  end
end
```
