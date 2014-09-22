# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grouped_options/version'

Gem::Specification.new do |spec|
  spec.name          = "grouped_options"
  spec.version       = GroupedOptions::VERSION
  spec.authors       = ["Marc Mentis"]
  spec.email         = ["mmentis@optonline.net"]
  spec.summary       = %q{Create 2d array for 'grouped_options_for_select' helper}
  spec.description   = %q{Create 2d array for use in grouped select tag from database not accessed by form_for helper}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
