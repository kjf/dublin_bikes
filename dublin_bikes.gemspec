# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dublin_bikes/version'

Gem::Specification.new do |spec|
  spec.name          = "dublin_bikes"
  spec.version       = DublinBikes::VERSION
  spec.authors       = ["Kevin Fagan"]
  spec.email         = ["kevin@tinktank.ie"]
  spec.description   = %q{Dublin Bikes gem}
  spec.summary       = %q{A simple ruby wrapper around the dublin bikes api}
  spec.homepage      = "https://github.com/kjf/dublin_bikes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday'
  spec.add_dependency 'nokogiri-happymapper'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'rb-fsevent', '~> 0.9.1'
end
