$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'kajomi-rails'
require 'json'

ActionMailer::Base.delivery_method = :kajomi
ActionMailer::Base.prepend_view_path(File.join(File.dirname(__FILE__), "fixtures", "views"))

Dir["#{File.dirname(__FILE__)}/fixtures/mailers/*.rb"].each { |f| require f }
