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

## License

This project rocks and uses MIT-LICENSE.
