# SimpleCells

## Install

Add to your Gemfile and bundle:
```ruby
gem "simple_cells"
```

Add the render method by including the helper in your ApplicationHelper:
```ruby
module ApplicationHelper
  include SimpleCells::ViewsHelper
end
```

Autoload the simple cells through "application.rb":
```ruby
config.autoload_paths << Rails.root.join("app", "simple_cells")
```

## Usage

Add a cells-class to your application in "app/simple_cells/users_simple_cell.rb":
```ruby
class UsersSimpleCell < SimpleCells::BaseCell
  def my_action
  end

  def helper_method
    "Hello from helper method"
  end
end
```

Then add a view file for the action in "app/views/simple_cells/users/my_action.html.erb":
```erb
Hello world
Content of my variable: <%= simple_cell[:my_variable] %>
Helper method: <%= simple_cell.helper_method %>
```

You can now render it like this from another ERB file:
```erb
<%= render_simple_cell :users, :my_action, my_variable: "Test" %>
```

Check if a variable has been given:
```ruby
class MyCell < SimpleCells::BaseCell
  def my_method
    if simple_cell_argument?
      puts "Variable has been given"
    else
      puts "Variable has not been given"
    end
  end
end
```

## Testing

You can test your cells individually like this:

```ruby
require "rails_helper"

describe "my cell" do
  it "renders" do
    helper = SimpleCells::SpecHelper.new("users/something", :show)
    expect(helper.body).to include "some text"
  end
end
```

## License

This project rocks and uses MIT-LICENSE.
