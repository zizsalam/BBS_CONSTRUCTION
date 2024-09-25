class PrequalificationsController < ApplicationController
  before_action :set_prequalification, only: %i[ show edit update destroy ]

  # GET /prequalifications or /prequalifications.json
  def index
    @prequalifications = Prequalification.all
  end

  # GET /prequalifications/1 or /prequalifications/1.json
  def show
  end

  # GET /prequalifications/new
  def new
    @prequalification = Prequalification.new
  end

  # GET /prequalifications/1/edit
  def edit
  end

  # POST /prequalifications or /prequalifications.json
  def create
    @prequalification = Prequalification.new(prequalification_params)

    respond_to do |format|
      if @prequalification.save
        format.html { redirect_to @prequalification, notice: "Prequalification was successfully created." }
        format.json { render :show, status: :created, location: @prequalification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prequalification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prequalifications/1 or /prequalifications/1.json
  def update
    respond_to do |format|
      if @prequalification.update(prequalification_params)
        format.html { redirect_to @prequalification, notice: "Prequalification was successfully updated." }
        format.json { render :show, status: :ok, location: @prequalification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prequalification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prequalifications/1 or /prequalifications/1.json
  def destroy
    @prequalification.destroy!

    respond_to do |format|
      format.html { redirect_to prequalifications_path, status: :see_other, notice: "Prequalification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prequalification
      @prequalification = Prequalification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prequalification_params
      params.require(:prequalification).permit(:prequalified_budget)
    end
end
