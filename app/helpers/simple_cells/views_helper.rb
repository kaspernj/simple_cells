module SimpleCells::ViewsHelper
  def render_simple_cell(cell_name, action_name, simple_cell_arguments = {})
    cell_class_name = StringCases.snake_to_camel(cell_name)
    cell_class_name << "SimpleCell"

    cell_file_path = Rails.root.join("app", "simple_cells", "#{cell_name}_simple_cell")

    require cell_file_path

    cell_instance = StringCases.constantize(cell_class_name).new(view_context: self, simple_cell_arguments: simple_cell_arguments)
    cell_instance.__send__(action_name)
    cell_instance.render_simple_cell_view(cell_name, action_name)
  end
end
