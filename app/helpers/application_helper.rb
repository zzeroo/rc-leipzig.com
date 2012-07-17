module ApplicationHelper
  def sortable(title = nil, column)
    title ||= column.titelize
    column == sort_column
    direction = (sort_direction == "asc") ? "desc" : "asc"  
    link_to title, :sort => column, :direction => direction
  end
end
