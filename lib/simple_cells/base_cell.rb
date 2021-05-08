class SimpleCells::BaseCell
  include Rails.application.routes.url_helpers

  def initialize(args)
    @_simple_cell_arguments = args.fetch(:simple_cell_arguments)
    @_simple_cell_view_context = args.fetch(:view_context)
  end

  def render_simple_cell_view(cell_name, action_name)
    @_simple_cell_name = cell_name
    @_simple_cell_action_name = action_name

    if @_simple_cell_view_to_render
      if @_simple_cell_view_to_render[:view]
        cell_to_render = {
          template: File.join("/", "simple_cells", cell_name.to_s, @_simple_cell_view_to_render[:view]).to_s
        }
      else
        cell_to_render = @_simple_cell_view_to_render
      end
    else
      cell_to_render = {
        template: File.join("/", "simple_cells", cell_name.to_s, action_name.to_s).to_s
      }
    end

    @_simple_cell_view_context.render(
      {
        locals: {
          simple_cell: self
        }
      }.merge(cell_to_render)
    )
  end

  def [](key)
    @_simple_cell_arguments.fetch(key)
  end

  def []=(key, value)
    @_simple_cell_arguments[key] = value
  end

  def params
    @_simple_cell_view_context.params
  end

  def render(args)
    @_simple_cell_view_to_render = args
  end

  def simple_cell_argument?(argument_name)
    @_simple_cell_arguments.key?(argument_name)
  end

  def simple_cell_arguments
    @_simple_cell_arguments
  end

  def t(key)
    if key.start_with?(".")
      I18n.t("simple_cells.#{cell_name}#{key}")
    else
      I18n.t(key)
    end
  end

  def view_context
    @_simple_cell_view_context
  end
end
