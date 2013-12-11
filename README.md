# Kajomi::Rails

A plug-in for ActionMailer to send emails via Kajomi Mail API, based on the kajomi gem.

## Installation

Add this line to your application's Gemfile:

    gem 'kajomi-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kajomi-rails

Add this to your config/application.rb or environments/production.rb:

``` ruby
config.action_mailer.delivery_method = :kajomi
config.action_mailer.kajomi_settings = {
  shared_key: "your-shared-key",
  secret_key: "your-secret-key"
}
```

## Requirements

* `kajomi` gem
* Kajomi Mail API account with a your shared and secret key

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
