require 'action_mailer'
require 'kajomi'

module Kajomi
  module Rails
    extend self

    def install
      settings = {shared_key: nil, secret_key: nil}
      ActionMailer::Base.add_delivery_method :kajomi, Mail::Kajomi, settings
    end
  end
end

if defined?(Rails)
  require 'kajomi-rails/railtie'
else
  Kajomi::Rails.install
end
