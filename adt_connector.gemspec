# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adt/version'

Gem::Specification.new do |spec|
  spec.name          = "adt_connector"
  spec.version       = AdtConnector::VERSION
  spec.authors       = ['Chase Gray', "Anton Kravchenko"]
  spec.email         = ["anton.kravcenko@gmail.com"]
  spec.description   = 'A small fast library for reading Advantage Database Server database files (ADT) based on https://github.com/chasemgray/Ruby-ADT.'
  spec.summary       = 'Read ADT files'
  spec.homepage      = "https://github.com/ak/adt_connector"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 2'

  spec.add_dependency 'activesupport', '~> 2.3'
end
