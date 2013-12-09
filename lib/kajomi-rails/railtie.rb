module PostmarkRails
  class Railtie < Rails::Railtie
    initializer 'kajomi-rails', before: 'action_mailer.set_configs' do
      ActiveSupport.on_load :action_mailer do
        Kajomi::Rails.install
      end
    end
  end
end
