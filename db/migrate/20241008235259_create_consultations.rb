class CreateConsultations < ActiveRecord::Migration[7.2]
  def change
    create_table :consultations do |t|
      t.string :full_name
      t.string :email
      t.string :site_address
      t.string :city
      t.boolean :owns_site

      t.timestamps
    end
  end
end
