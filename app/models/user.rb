class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :installment_plans, dependent: :destroy
  has_many :homes, through: :installment_plans
  has_one :prequalification, dependent: :destroy
end
