class AddAuthorToArticles < ActiveRecord::Migration[7.2]
  def change
    add_reference :articles, :author, foreign_key: { to_table: :users }
  end
end
