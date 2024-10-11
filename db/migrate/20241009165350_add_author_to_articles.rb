class AddAuthorToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :author_id, :integer
    # You may also want to add an index for better performance
    add_index :articles, :author_id
  end
end
