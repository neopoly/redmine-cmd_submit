# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cmd_submit/version"
require "cmd_submit/infos"

Gem::Specification.new do |spec|
  spec.version       = CmdSubmit::VERSION
  spec.name          = CmdSubmit::Infos::NAME
  spec.authors       = CmdSubmit::Infos::AUTHORS.keys
  spec.email         = CmdSubmit::Infos::AUTHORS.values
  spec.summary       = CmdSubmit::Infos::DESCRIPTION
  spec.description   = CmdSubmit::Infos::DESCRIPTION
  spec.homepage      = CmdSubmit::Infos::URL
  spec.license       = CmdSubmit::Infos::LICENSE

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 11.1"
  spec.add_development_dependency "rubocop"
end
