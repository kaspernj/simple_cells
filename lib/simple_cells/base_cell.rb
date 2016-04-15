class SimpleCells::BaseCell
  def initialize(args)
    @_simple_cell_arguments = args.fetch(:simple_cell_arguments)
    @_simple_cell_view_context = args.fetch(:view_context)
  end

  def render_simple_cell_view(cell_name, action_name)
    @_simple_cell_view_context.render(
      file: Rails.root.join("app", "simple_cells", cell_name.to_s, action_name.to_s).to_s,
      locals: {
        simple_cell: self
      }
    )
  end

  def [](key)
    @_simple_cell_arguments.fetch(key)
  end

  def view_context
    @_simple_cell_view_context
  end
end
