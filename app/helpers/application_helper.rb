module ApplicationHelper
  def sortable(title = nil, column)
    title ||= column.titelize
    column == sort_column
    direction = (sort_direction == "asc") ? "desc" : "asc"  
    link_to title, :sort => column, :direction => direction
  end
  

  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, h("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  # Page Menu yellow background on active pages
  def is_active?(page_name)
    if params[:controller] == 'home'
      "active" if params[:action] == page_name
    else
      "active" if params[:controller] == page_name
    end
  end

end
