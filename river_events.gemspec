lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/river_events/version"

Gem::Specification.new do |spec|
  spec.name          = "river_events"
  spec.version       = RiverEvents::VERSION
  spec.authors       = ["rzemlin"]
  spec.email         = ["34727847+rzemlin@users.noreply.github.com"]

  spec.summary       = "sadsad"
  spec.description   = "addasds"
  spec.homepage      = "http://www.google.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.google.com"
  spec.metadata["changelog_uri"] = "http://www.google.com"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
  spec.add_dependency "rubocop", "~> 1.7"
end
