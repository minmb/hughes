# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hughes/version'

Gem::Specification.new do |spec|
  spec.name          = "hughes"
  spec.version       = Hughes::VERSION
  spec.authors       = ["protomouse"]
  spec.email         = ["root@protomou.se"]
  spec.summary       = %q{Unopinionated quasi-monads for Ruby}
  spec.homepage      = "https://github.com/minmb/hughes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
