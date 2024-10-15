# app/controllers/consultations_controller.rb
class ConsultationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    if @consultation.save
      redirect_to root_path, notice: 'Votre demande de consultation a été envoyée avec succès.'
    else
      render :new
    end
  end

  private

  def consultation_params
    params.require(:consultation).permit(:full_name, :email, :site_address, :city, :owns_site, :budget, :phone_number)
  end
end
