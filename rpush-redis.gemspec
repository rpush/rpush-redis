# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpush/redis/version'

Gem::Specification.new do |spec|
  spec.name          = "rpush-redis"
  spec.version       = Rpush::Redis::VERSION
  spec.authors       = ["Ian Leitch"]
  spec.email         = ["port001@gmail.com"]
  spec.summary       = %q{Redis dependencies for Rpush.}
  spec.description   = %q{Redis dependencies for Rpush.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "modis", "~> 1.4", ">= 1.4.1"
  spec.add_dependency "msgpack_rails", "~> 0.4", ">= 0.4.2"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake"
end
