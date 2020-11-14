require_relative 'lib/repl/version'

Gem::Specification.new do |spec|
  spec.name          = "repl"
  spec.version       = Repl::VERSION
  spec.authors       = ["Anton Ageev", "Max Sukhanov"]
  spec.email         = ["fubar00@yandex.com"]

  spec.summary       = "Simple REPL implementation"
  spec.homepage      = "https://github.com/MaxSukhanov/repl_gem"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = Dir["{bin,lib}/**/*"]
  spec.executables   = ["repl"]
  spec.require_paths = ["lib", "lib/repl", "lib/repl/commands"]
end
