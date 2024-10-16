class CreateInstallmentPlans < ActiveRecord::Migration[7.2]
  def change
    create_table :installment_plans do |t|
      t.references :user, null: false, foreign_key: true
      t.references :home, null: false, foreign_key: true
      t.decimal :total_amount
      t.decimal :installment_amount
      t.boolean :paid
      t.date :due_date

      t.timestamps
    end
  end
end
