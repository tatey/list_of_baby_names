# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "list_of_baby_names/version"

Gem::Specification.new do |spec|
  spec.name          = "list_of_baby_names"
  spec.version       = ListOfBabyNames::VERSION
  spec.authors       = ["Tate Johnson"]
  spec.email         = ["tate@tatey.com"]

  spec.summary       = %q{A list of baby names given to tiny humans}
  spec.description   = %q{A list of baby names given to tiny humans}
  spec.homepage      = "https://github.com/tatey/list_of_baby_names"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(.rspec|.travis.yml|shell.nix)}) || f.match(%r{^(test|spec|features|script|nix)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
