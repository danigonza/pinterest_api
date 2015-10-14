require_relative 'lib/pinterest_api/version'

Gem::Specification.new do |s|
  s.authors         = ['Daniel Gonzalez']
  s.email           = ['danigonza86@gmail.com']
  s.name            = 'pinterest_api'
  s.version         = PinterestApi::VERSION
  s.summary         = 'Pinterest api wrapper'
  s.description     = 'A pinterest api wrapper'
  s.files           = `git ls-files`.split($\)
  s.require_paths   = ['lib']
  s.add_dependency 'rest-client', '~> 0'
  s.homepage        = 'http://rubygems.org/gems/pinterest_api'
  s.license         = 'MIT'
end