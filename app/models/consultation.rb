class Consultation < ApplicationRecord
  validates :full_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :site_address, presence: true
  validates :city, presence: true
  validates :owns_site, inclusion: { in: [true, false] }
end
