# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hacker_rank/version'

Gem::Specification.new do |spec|
  spec.name          = "hacker_rank"
  spec.version       = HackerRank::VERSION
  spec.authors       = ["Chris Oliver"]
  spec.email         = ["excid3@gmail.com"]
  spec.summary       = %q{A Ruby interface to the HackerRank / InterviewStreet API}
  spec.description   = %q{A Ruby interface to the HackerRank / InterviewStreet API}
  spec.homepage      = "http://github.com/excid3/hacker_rank"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "httparty", "~> 0.13.1"
end
