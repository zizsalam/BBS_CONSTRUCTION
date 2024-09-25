class InstallmentPlan < ApplicationRecord
  belongs_to :user
  belongs_to :home

  validates :total_amount, :installement_amount, presence: true
  validates :due_date, presence: true
end
