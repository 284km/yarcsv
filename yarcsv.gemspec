
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yarcsv/version"

Gem::Specification.new do |spec|
  spec.name          = "yarcsv"
  spec.version       = Yarcsv::VERSION
  spec.authors       = ["284km"]
  spec.email         = ["k.furuhashi10@gmail.com"]

  spec.summary       = %q{libcsv based ruby/csv compatible CSV library}
  spec.description   = %q{libcsv based ruby/csv compatible CSV library}
  spec.homepage      = "https://github.com/284km/yarcsv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/yarcsv/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest", "~> 5.0"
end
