class RenovationsController < ApplicationController
  before_action :set_renovation, only: [:show, :edit, :update, :destroy]

  # GET /renovations
  # GET /renovations.json
  def index
    @renovations = Renovation.all
  end

  # GET /renovations/1
  # GET /renovations/1.json
  def show
  end

  # GET /renovations/new
  def new
    @renovation = Renovation.new
  end

  # GET /renovations/1/edit
  def edit
  end

  # POST /renovations
  # POST /renovations.json
  def create
    @renovation = Renovation.new(renovation_params)

    respond_to do |format|
      if @renovation.save
        format.html { redirect_to @renovation, notice: 'Renovation was successfully created.' }
        format.json { render :show, status: :created, location: @renovation }
      else
        format.html { render :new }
        format.json { render json: @renovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renovations/1
  # PATCH/PUT /renovations/1.json
  def update
    respond_to do |format|
      if @renovation.update(renovation_params)
        format.html { redirect_to @renovation, notice: 'Renovation was successfully updated.' }
        format.json { render :show, status: :ok, location: @renovation }
      else
        format.html { render :edit }
        format.json { render json: @renovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renovations/1
  # DELETE /renovations/1.json
  def destroy
    @renovation.destroy
    respond_to do |format|
      format.html { redirect_to renovations_url, notice: 'Renovation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renovation
      @renovation = Renovation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def renovation_params
      params.require(:renovation).permit(:contract_id, :start_date, :end_time)
    end
end
