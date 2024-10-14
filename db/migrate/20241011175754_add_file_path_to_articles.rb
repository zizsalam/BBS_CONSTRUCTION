class AddFilePathToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :file_path, :string
  end
end
