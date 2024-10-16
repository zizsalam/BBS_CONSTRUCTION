# app/controllers/installment_plans_controller.rb
class InstallmentPlansController < ApplicationController
  before_action :authenticate_user!
  before_action :set_home

  def new
    @installment_plan = @home.installment_plans.build
  end

  def create
    @installment_plan = @home.installment_plans.build(installment_plan_params)
    @installment_plan.user = current_user

    if @installment_plan.save
      redirect_to home_path(@home), notice: "Installment plan created!"
    else
      render :new
    end
  end

  private

  def set_home
    @home = Home.find(params[:home_id])
  end

  def installment_plan_params
    params.require(:installment_plan).permit(:total_amount, :installment_amount, :due_date)
  end
end
