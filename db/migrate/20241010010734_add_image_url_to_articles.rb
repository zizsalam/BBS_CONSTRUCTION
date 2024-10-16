class AddImageUrlToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :image_url, :string
  end
end
