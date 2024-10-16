# app/articles/article_file_manager.rb
class ArticleFileManager
  CONTENT_DIR = Rails.root.join('content', 'articles')

  def self.create_article(title, content, published: false)
    filename = generate_filename(title)
    dir = published ? 'published' : 'drafts'
    path = CONTENT_DIR.join(dir, filename)

    FileUtils.mkdir_p(path.dirname) unless File.directory?(path.dirname)
    File.write(path, content)
    path.to_s
  end

  def self.update_article(article, new_content)
    File.write(article.file_path, new_content)
  end

  def self.publish_article(article)
    return if article.published?

    new_path = CONTENT_DIR.join('published', File.basename(article.file_path))
    FileUtils.mkdir_p(new_path.dirname) unless File.directory?(new_path.dirname)
    FileUtils.mv(article.file_path, new_path)
    article.update(file_path: new_path.to_s, published_at: Time.current)
  end

  private

  def self.generate_filename(title)
    date = Time.current.strftime('%Y-%m-%d')
    slug = title.parameterize
    "#{date}-#{slug}.md"
  end
end
