# Weather_Check

This gem pulls current weather and expected nighttime weather from New York, NY and Los Angeles, California.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weather_check'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install weather_check

## Usage

Another way to get ahold of this is to Git clone this to your environment of choice.
CD your terminal into weather_check
execute command bin/weather_check

Executing bin/weather_check will prompt the weather forecaster to begin.
It offers current temperature and expected nighttime temperature for New York, NY and Los Angeles, California.
These are two popular and densely populated areas so I can imagine this coming in handy for many to check current temperature and compare it to expected nighttime temperature.

Upon running it will prompt you with a few options. For NY temperature you can enter "1" and for CA temperature you can enter "2".
To see the menu again enter "menu". To exit, enter "exit". Any other commands will prompt the program to not understand you and will offer valid commands such as listed above.
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/weather_check. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WeatherCheck project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/weather_check/blob/master/CODE_OF_CONDUCT.md).
