class CreatePrequalifications < ActiveRecord::Migration[7.2]
  def change
    create_table :prequalifications do |t|
      t.decimal :prequalified_budget

      t.timestamps
    end
  end
end
