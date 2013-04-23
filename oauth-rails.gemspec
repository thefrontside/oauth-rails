# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oauth/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "oauth-rails"
  spec.version       = OAuth::Rails::VERSION
  spec.authors       = ["Charles Lowell"]
  spec.email         = ["cowboyd@thefrontside.net"]
  spec.description   = %q{Para bailar La OAuth, se necesita una poca de gracia.}
  spec.summary       = %q{Request Tokens, Access Tokens... When they dip, you dip, we dip.}
  spec.homepage      = "https://github.com/thefrontside/oauth-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "oauth"
end
