class Home < ApplicationRecord
  has_many :installement_plans
  has_many :users, through: :installement_plans
end
