class CreateHomes < ActiveRecord::Migration[7.2]
  def change
    create_table :homes do |t|
      t.string :title
      t.decimal :price
      t.string :description
      t.string :string
      t.string :location

      t.timestamps
    end
  end
end
