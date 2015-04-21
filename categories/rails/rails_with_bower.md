## Rails work with bower

1. [taking-advantage-of-bower-in-your-rails-4-app](http://dotwell.io/taking-advantage-of-bower-in-your-rails-4-app/)


## Readme

#### Install bower

```ruby
npm install -g bower

vim .bowerrc
{
  "directory": "vendor/assets/components"
}

bower init # to create your bower.json

# edit /config/application.rb
config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
# =======================================
# basic css
bower install bootstrap --save
bower install fontawesome --save
bower install simple-line-icons --save
bower install whirl --save
bower install animate.css --save
bower install weather-icons --save
bower install normalize-css --save

# =======================================
# basic js
bower install jQuery-Storage-API --save
bower install jquery.easing --save
bower install animo.js --save
bower install slimScroll --save
bower install screenfull --save
bower install jquery-localize-i18n --save

bower install moment --save

# https://github.com/darkskyapp/skycons

# =======================================
# js for form
bower install bootstrap-tagsinput --save
bower install parsleyjs --save
bower install bootstrap-filestyle --save
bower install chosen --save
bower install seiyria-bootstrap-slider --save
bower install jquery.inputmask --save
bower install eonasdan-bootstrap-datetimepicker --save
bower install jquery-validation --save
bower install jquery.steps --save
bower install x-editable --save
bower install html.sortable --save

# =======================================
# js for table
# bower install jqGrid --save
bower install datatables --save
bower install datatables-colvis --save
# datatable-bootstrap

# =======================================
# jquery-ui
bower install jquery-ui --save

bower install jqueryui-touch-punch --save

bower install fullcalendar --save

# =======================================
# chart
bower install chartist --save
# 折线图
# jquery.sparkline
# 饼图
# flot

# loder
# jquery-classyloader

# =======================================
# vector
bower install ika.jvectormap --save

# =======================================
# Nestable
# https://github.com/dbushell/Nestable
```

#### Check code

```ruby
brakeman
bundle exec rails_best_practices .
rubocop -R
```

#### In Production: FIXME ActionController::RoutingError (No route matches [GET] "/assets/application-

```ruby
# production.rb
config.serve_static_files = true
```

#### Turbolinks work with jquery

```ruby
# 1. data-no-turbolink
# 2.
$(document).on "page:change", ->
  alert "page has loaded!"
```

#### Rails scaffold generator

```ruby
plural_table_name: users
singular_table_name: user
attributes: [#<Rails::Generators::GeneratedAttribute:0x00000005f4b438 @name="name", @type=:string, @has_index=false, @has_uniq_index=false, @attr_options={}, @column_name="name", @field_type=:text_field>, #<Rails::Generators::GeneratedAttribute:0x00000005f4b280 @name="pass", @type=:integer, @has_index=false, @has_uniq_index=false, @attr_options={}, @column_name="pass", @field_type=:number_field>, #<Rails::Generators::GeneratedAttribute:0x00000005f4b0a0 @name="con", @type=:text, @has_index=false, @has_uniq_index=false, @attr_options={}, @column_name="con", @field_type=:text_area>, #<Rails::Generators::GeneratedAttribute:0x00000005f4aee8 @name="heh", @type=:boolean, @has_index=false, @has_uniq_index=false, @attr_options={}, @column_name="heh", @field_type=:check_box>]

field_type: number_field
column_name: pass
human_name: Pass
name: pass

rails g scaffold User name age:integer intro:text

decimal and float 不报错
```

#### Issue

```ruby
decimal and float 不报错
/users/i18n/site-zh.json
```

#### Rspec rails stack

1. [setup-rails-41-spring-rspec-and-guard](http://girders.org/blog/2014/02/06/setup-rails-41-spring-rspec-and-guard/)
2. [setting-up-bdd-stack-on-a-new-rails-4-application](https://semaphoreci.com/blog/2013/08/14/setting-up-bdd-stack-on-a-new-rails-4-application.html)
3. [how-we-test-rails-applications](https://robots.thoughtbot.com/how-we-test-rails-applications)
4. [starting-a-new-rails-4-2-project-with-postgresql-and-rspec](http://sudo-science.com/starting-a-new-rails-4-2-project-with-postgresql-and-rspec/)
5. [robust-integration-testing-in-rails-4-with-rspec-capybara-and-selenium](http://stefan.haflidason.com/robust-integration-testing-in-rails-4-with-rspec-capybara-and-selenium/)
6. [Automated Rails testing with Capybara and PhantomJS](http://mikec.me/posts/11)
7. [cucumber-capybara-poltergeist-rockstar-bdd-combo](http://shashikantjagtap.net/cucumber-capybara-poltergeist-rockstar-bdd-combo/)

```ruby
group :development, :test do
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'rb-fsevent' if `uname` =~ /Darwin/  # for Mac
  gem 'factory_girl_rails'
  gem 'spork-rails'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'factory_girl_rails'  # A library for setting up Ruby objects as test data
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'capybara-screenshot', github: 'parndt/capybara-screenshot', branch: 'fix-rspec-3-0-0-deprecation'
  gem 'show_me_the_cookies'
  gem 'rspec-instafail'
  gem 'shoulda'  # Makes tests easy on the fingers and the eyes
  gem 'shoulda-matchers'  # Collection of testing matchers extracted from Shoulda
  gem 'email_spec'
  gem 'poltergeist'
  gem 'launchy'
  gem 'faker'
  gem 'ffaker'
  gem 'rspec-retry', github: 'justin808/rspec-retry', branch: 'justin808-rspec-299'
  gem 'resque_spec', github: 'justin808/resque_spec', branch: 'fix-for-resque-heroku'
  gem 'vcr'
  gem 'fakeweb'
end
group :development do
  gem 'guard-rails'  # Guard-rails is watching on your railses!
end

```

#### Rails field type

```ruby
http://stackoverflow.com/questions/3260345/list-of-rails-model-types/21273154#21273154
```

#### backup

```ruby

```

