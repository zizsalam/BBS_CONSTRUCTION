class Users::RegistrationsController < Devise::RegistrationsController
  layout 'devise'

  # Add custom logic here if needed
  # For example:
  # def create
  #   super do |resource|
  #     # Add custom behavior here
  #   end
  # end
end
