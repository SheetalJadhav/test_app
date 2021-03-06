# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_app/version'

Gem::Specification.new do |spec|
  spec.name          = "test_app"
  spec.version       = TestApp::VERSION
  spec.authors       = ["Sheetal Jadhav"]
  spec.email         = ["sheetal.jadhav@izeltech.com"]
  spec.summary       = %q{Test}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.rdoc_options << '--title' << 'Rake -- Ruby Make' <<'--main' << 'README' <<'--line-numbers'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

end
