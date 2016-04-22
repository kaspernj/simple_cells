$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_cells/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_cells"
  s.version     = SimpleCells::VERSION
  s.authors     = ["kaspernj"]
  s.email       = ["k@spernj.org"]
  s.homepage    = "https://www.github.com/kaspernj/simple_cells"
  s.summary     = "An attempt at writing a very simple cells gem."
  s.description = "An attempt at writing a very simple cells gem."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.0.0"
  s.add_dependency "auto_autoloader", ">= 0.0.4"
  s.add_dependency "string-cases", ">= 0.0.4"

  s.add_development_dependency "sqlite3", "1.3.11"
  s.add_development_dependency "rspec-rails", "3.4.2"
  s.add_development_dependency "best_practice_project", "0.0.9"
  s.add_development_dependency "rubocop", "0.36.0"
  s.add_development_dependency "capybara", "2.6.2"
  s.add_development_dependency "capybara-webkit", "1.8.0"
  s.add_development_dependency "factory_girl_rails", "4.7.0"
  s.add_development_dependency "forgery", "0.6.0"
end
