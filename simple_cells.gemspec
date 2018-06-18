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

  s.add_dependency "rails", ">= 4.0.0", "< 5.0.0"
  s.add_dependency "auto_autoloader", ">= 0.0.4"
end
