module SimpleCells::ViewsHelper
  def render_simple_cell(cell_name, action_name, simple_cell_arguments = {})
    cell_class_name = "#{cell_name.camelize}SimpleCell"

    cell_instance = cell_class_name.constantize.new(view_context: self, simple_cell_arguments: simple_cell_arguments)
    cell_instance.__send__(action_name)
    cell_instance.render_simple_cell_view(cell_name, action_name)
  end
end
