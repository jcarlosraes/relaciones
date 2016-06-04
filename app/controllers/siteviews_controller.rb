class SiteviewsController < ApplicationController
  before_action :set_siteview, only: [:show, :edit, :update, :destroy]

  # GET /siteviews
  # GET /siteviews.json
  def index
    @siteviews = Siteview.all
  end

  # GET /siteviews/1
  # GET /siteviews/1.json
  def show
  end

  # GET /siteviews/new
  def new
    @siteview = Siteview.new
  end

  # GET /siteviews/1/edit
  def edit
  end

  # POST /siteviews
  # POST /siteviews.json
  def create
    @siteview = Siteview.new(siteview_params)

    respond_to do |format|
      if @siteview.save
        format.html { redirect_to @siteview, notice: 'Siteview was successfully created.' }
        format.json { render :show, status: :created, location: @siteview }
      else
        format.html { render :new }
        format.json { render json: @siteview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /siteviews/1
  # PATCH/PUT /siteviews/1.json
  def update
    respond_to do |format|
      if @siteview.update(siteview_params)
        format.html { redirect_to @siteview, notice: 'Siteview was successfully updated.' }
        format.json { render :show, status: :ok, location: @siteview }
      else
        format.html { render :edit }
        format.json { render json: @siteview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siteviews/1
  # DELETE /siteviews/1.json
  def destroy
    @siteview.destroy
    respond_to do |format|
      format.html { redirect_to siteviews_url, notice: 'Siteview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siteview
      @siteview = Siteview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def siteview_params
      params.require(:siteview).permit(:renovation_id, :visit_date, :completed)
    end
end
