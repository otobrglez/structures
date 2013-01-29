# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'structures/version'

Gem::Specification.new do |gem|
  gem.name          = "structures"
  gem.version       = Structures::VERSION
  gem.authors       = ["Oto Brglez"]
  gem.email         = ["otobrglez@gmail.com"]
  gem.description   = %q{Ruby implementation of some well-know data structures}
  gem.summary       = %q{This Gem holds some of well-known data structures implemented in Ruby.}
  gem.homepage      = "https://github.com/otobrglez/structures"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
