# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tdiary/coffeescript/version'

Gem::Specification.new do |spec|
  spec.name          = "tdiary-coffeescript"
  spec.version       = TDiary::CoffeeScript::VERSION
  spec.authors       = ["SHIBATA Hiroshi"]
  spec.email         = ["hsbt@ruby-lang.org"]

  spec.summary       = %q{CoffeeScript Filter for tDiary.}
  spec.description   = %q{CoffeeScript Filter for tDiary.}
  spec.homepage      = "https://github.com/tdiary/tdiary-coffeescript"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "tdiary"
  spec.add_dependency "coffee-script"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
