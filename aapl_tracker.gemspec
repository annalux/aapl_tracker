require_relative 'lib/aapl_tracker/version'

Gem::Specification.new do |spec|
  spec.name          = "aapl_tracker"
  spec.version       = AaplTracker::VERSION
  spec.authors       = ["https://github.com/annalux"]
  spec.email         = ["anna.watt.lux@gmail.com"]

  spec.summary       = "CLI app designed to access financial metrics for AAPL stock ticker"
  spec.description   = "This CLI app scrapes Yahoo! Finance for current financial metrics on AAPL stock."
  spec.homepage      = "http://github.com/annalux/aapl_tracker"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["source_code_uri"] = "http://github.com/annalux/aapl_tracker"
  spec.metadata["changelog_uri"] = "http://github.com/annalux/aapl_tracker"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
  spec.add_dependency "colorize"
end
