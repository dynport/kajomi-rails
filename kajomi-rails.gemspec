# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kajomi-rails/version'

Gem::Specification.new do |s|
  s.name          = "kajomi-rails"
  s.version       = Kajomi::Rails::VERSION
  s.authors       = ["Dynport GmbH"]
  s.email         = ["manuel.boy@dynport.de"]
  s.description   = %q{Rails ActionMailer adapter for use with Kajomi Mail}
  s.summary       = %q{Rails ActionMailer adapter for use with Kajomi Mail}
  s.homepage      = "http://www.dynport.de"
  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  s.add_dependency 'actionmailer', ">= 3.0.0"
  s.add_dependency 'kajomi'
  s.add_dependency 'multi_json'
  s.add_development_dependency 'rspec'
end
