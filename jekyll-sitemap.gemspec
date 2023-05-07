# frozen_string_literal: true

require_relative "lib/jekyll-sitemap/version"

Gem::Specification.new do |spec|
  spec.name        = "jekyll-sitemap"
  spec.summary     = "Automatically generate a sitemap.xml for your Jekyll site."
  spec.version     = Jekyll::Sitemap::VERSION
  spec.authors     = ["GitHub, Inc."]
  spec.email       = "support@github.com"
  spec.homepage    = "https://github.com/jekyll/jekyll-sitemap"
  spec.licenses    = ["MIT"]

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r!^bin/!) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r!^(test|spec|features)/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_dependency "jekyll", ">= 3.9", "< 5.0"

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "kramdown-parser-gfm", "~> 1.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.4"
end
