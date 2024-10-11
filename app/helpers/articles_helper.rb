# app/helpers/articles_helper.rb
module ArticlesHelper
  def markdown(content)
    markdown_renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown_renderer.render(content).html_safe
  end
end
