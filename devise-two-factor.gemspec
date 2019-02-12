$:.push File.expand_path('../lib', __FILE__)
require 'devise_two_factor/version'

Gem::Specification.new do |s|
  s.name        = 'devise-two-factor'
  s.version     = DeviseTwoFactor::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.summary     = 'Barebones two-factor authentication with Devise'
  s.email       = 'dev@bonus.ly'
  s.homepage    = 'https://github.com/bonusly/devise-two-factor'
  s.description = 'Fork of tinfoilsecurity devise-two-factor'
  s.authors     = ['Shane Wilton', 'Josh Cass']

  s.files         = `git ls-files`.split("\n").delete_if { |x| x.match('demo/*') }
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']

  s.add_runtime_dependency 'railties',       '< 5.3'
  s.add_runtime_dependency 'activesupport',  '< 5.3'
  s.add_runtime_dependency 'devise',         '~> 4.0'
  s.add_runtime_dependency 'rotp',           '~> 2.0'

  s.add_development_dependency 'activemodel'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'bundler',    '> 1.0'
  s.add_development_dependency 'rspec',      '> 3'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'timecop'
end
