# -*- encoding: utf-8 -*-
require File.expand_path('../lib/clean_bsmart_catalog/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jamie English"]
  gem.email         = ["jamienglish@gmail.com"]
  gem.description   = %q{Convert a bsmart catalog xml file into something more useful}
  gem.summary       = <<-DESC
    Basically wraps an XSL stylesheet to transform a horrible XML document into
    a nicer one. MRI uses Nokogiri and JRuby uses Xalan.
  DESC
  gem.homepage      = "http://github.com/jamienglish/clean-bsmart-catalog"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "clean_bsmart_catalog"
  gem.require_paths = ["lib"]
  gem.version       = CleanBsmartCatalog::VERSION

  gem.add_development_dependency('aruba')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('rake', '~> 0.9.2')

  gem.add_dependency('methadone', '~> 1.1.0')
  gem.add_dependency('activesupport', '~> 3.2.3')
  gem.add_dependency('nokogiri', '~> 1.5.2')
end
