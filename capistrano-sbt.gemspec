# -*- encoding: utf-8 -*-
require File.expand_path('../lib/capistrano-sbt/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yamashita Yuu"]
  gem.email         = ["yamashita@geishatokyo.com"]
  gem.description   = %q{a capistrano recipe to deploy sbt based projects.}
  gem.summary       = %q{a capistrano recipe to deploy sbt based projects.}
  gem.homepage      = "https://github.com/yyuu/capistrano-sbt"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "capistrano-sbt"
  gem.require_paths = ["lib"]
  gem.version       = Capistrano::SBT::VERSION

  gem.add_dependency("capistrano", "< 3")
  gem.add_dependency("capistrano-file-resources", ">= 0.1.0")
  gem.add_dependency("capistrano-file-transfer-ext", ">= 0.1.0")
  gem.add_development_dependency("capistrano-jdk-installer", ">= 0.1.0")
end
