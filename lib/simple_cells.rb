require "auto_autoloader"
require "simple_cells/engine"
require "string-cases"

module SimpleCells
  AutoAutoloader.autoload_sub_classes(self, __FILE__)
end
