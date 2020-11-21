module ApplicationHelper
  def categories
    Category.all.map { |c| [c.name, c.id] }
  end
  
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, hard_wrap: true, filter_html: true, autolink: true, no_intraemphasis: true)
    return markdown.render(text).html_safe
  end
end
