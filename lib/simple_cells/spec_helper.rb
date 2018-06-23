class SimpleCells::SpecHelper
  attr_reader :action_name, :cell_name, :cell_class_name, :body, :simple_cell_arguments

  def initialize(cell_name, action_name, simple_cell_arguments = {})
    @action_name = action_name
    @cell_name = cell_name
    @cell_class_name = "#{cell_name.to_s.camelize}SimpleCell"
    @simple_cell_arguments = simple_cell_arguments
    render
  end

  def cell_instance
    @cell_instance ||= cell_class_name.constantize.new(view_context: view_context, simple_cell_arguments: simple_cell_arguments)
  end

  def controller
    @controller ||= ActionController::Base.new
  end

  def render
    cell_instance.__send__(action_name)
    @body = cell_instance.render_simple_cell_view(cell_name, action_name)
  end

  def view_context
    @view_context ||= controller.view_context
  end
end
