# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'antra/version'

Gem::Specification.new do |spec|
  spec.name          = "antra"
  spec.version       = Antra::VERSION
  spec.authors       = ["Adrian E."]
  spec.email         = ["addis.aden@gmail.com"]
  spec.summary       = %q{antra - Analyse Transactions}
  spec.description   = %q{Antra is a Ruby-Application to analyse money-transactions on your local machine.}
  spec.homepage      = "https://github.com/addisaden/antra"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra", "~> 1.4"
  spec.add_dependency "sqlite3"
  spec.add_dependency "activerecord", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 2.14"
end
