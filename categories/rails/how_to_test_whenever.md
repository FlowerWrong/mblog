# How to test [whenever](https://github.com/javan/whenever) in rails?

1. Write your schedule.rb.
        set :output, { error: 'error.log', standard: 'cron.log' }
        every 1.minute do
          runner "Weixin.sayhello"
        end
2. Write your sayhello.
          def self.sayhello
            Rails.logger.info 'say hello to yangkang every minute'
          end
3. `whenever --update-crontab --set environment=development`
4. `rails s`
5. `sudo service cron restart`
6. See your development.log.
