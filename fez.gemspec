$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fez/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fez"
  s.version     = Fez::VERSION
  s.authors     = ["tetiana chupryna"]
  s.email       = ["brytannia@gmail.com"]
  s.homepage    = "https://github.com/brytannia/fez"
  s.summary     = "Rails plugin to run rake tasks automatically "
  s.description = "Fez helps to maintain your database with grace and sanity."
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
