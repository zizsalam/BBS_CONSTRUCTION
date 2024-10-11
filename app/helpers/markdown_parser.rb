# app/services/markdown_parser.rb
class MarkdownParser
  def initialize(text)
    @text = text
  end

  def parse
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(@text).html_safe
  end
end
