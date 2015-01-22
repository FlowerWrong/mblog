# Rails exception

### Handler

```ruby
begin
  # do something dodgy
rescue ActiveRecord::RecordNotFound
  # handle not found error
rescue ActiveRecord::ActiveRecordError
  # handle other ActiveRecord errors
rescue # StandardError
  # handle most other errors
rescue Exception
  # handle everything else
end
```

### Exception Notifier

```ruby
errbit
slack + exception_notification # https://slack.com/
airbrake
```
