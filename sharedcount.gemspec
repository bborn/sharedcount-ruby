# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sharedcount/version'

Gem::Specification.new do |spec|
  spec.name          = "sharedcount"
  spec.version       = Sharedcount::VERSION
  spec.authors       = ["Andrea Mostosi"]
  spec.email         = ["andrea.mostosi@zenkay.net"]

  spec.summary       = %q{SharedCount API gem}
  spec.description   = %q{Connector for SharedCount API service}
  spec.homepage      = "https://github.com/zenkay/sharedcount-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", '~> 0.9', '>= 0.9.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
