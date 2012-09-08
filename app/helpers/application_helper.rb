module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titelize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, :class => css_class 
  end

  # Markdown parser durch das 'redcarpet' gem.
  # {Homepage of Redcarpet2}[https://github.com/vmg/redcarpet]
  #
  # http://railscasts.com/episodes/272-markdown-with-redcarpet?view=asciicast
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       :autolink => true, 
                                       :fenced_code_blocks => true,
                                       :space_after_headers => true)
    markdown.render(text).html_safe
  end

  # Dies ist der Helper der die Hauptnavigation der Seite steuert.
  # Er sorgt dafür dass die jeweilige Seite gelb hinterlegt ist.
  # Steht man also auf der Startseite ist der Menupunkt Startseite gelb, steht
  # man dagegen auf der Terminübersicht/ vergabe Seite dann ist diese 
  # gelb hinterlegt.
  def is_active?(page_name)
    if params[:controller] == 'home'
      "active" if params[:action] == page_name
    else
      "active" if params[:controller] == page_name
    end
  end
end
