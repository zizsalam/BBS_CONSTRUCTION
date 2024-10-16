class AddBudgetAndPhoneNumberToConsultations < ActiveRecord::Migration[7.2]
  def change
    add_column :consultations, :budget, :string
    add_column :consultations, :phone_number, :string
  end
end
