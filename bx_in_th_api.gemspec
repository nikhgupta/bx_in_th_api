# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bx_in_th_api/version'

Gem::Specification.new do |spec|
  spec.name          = "bx_in_th_api"
  spec.version       = BxInThApi::VERSION
  spec.authors       = ["Nikhil Gupta"]
  spec.email         = ["me@nikhgupta.com"]

  spec.summary       = %q{Gem for working with BX.in.TH API.}
  spec.description   = %q{Gem for working with BX.in.TH API.}
  spec.homepage      = "https://gitlab.com/nickwork/bx_in_th_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "faraday"
end
