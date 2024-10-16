class MigrateBodytoRichBodyArticles < ActiveRecord::Migration[7.2]
  def up
    Article.find_each do |article|
      article.update(rich_body: article.body)
    end
  end

  def down
    Article.find_each do |article|
      article.update(body: article.rich_body)
      article.update(rich_body: nil)
    end
  end
end
