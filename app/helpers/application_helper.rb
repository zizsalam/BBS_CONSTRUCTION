module ApplicationHelper
  def markdown_to_html(markdown_text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(markdown_text).html_safe # make sure the output is safe for HTML
  end
end
