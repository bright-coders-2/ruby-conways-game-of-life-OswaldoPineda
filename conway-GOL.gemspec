
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "conway/GOL/version"

Gem::Specification.new do |spec|
  spec.name          = "conway-GOL"
  spec.version       = Conway::GOL::VERSION
  spec.authors       = ["OswaldoPineda"]
  spec.email         = ["carlos-1502010@hotmail.com"]

  spec.summary       = %q{This a gem for base of Conway's Game of Life}
  spec.description   = %q{You can waste time looking how all the cells moves in the matrix, it's kind a fun}
  spec.homepage      = "https://github.com/OswaldoPineda"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "colorize", "~> 0.8.1"
end
