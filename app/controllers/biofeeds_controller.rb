class BiofeedsController < ApplicationController
  before_action :set_biofeed, only: [:show, :edit, :update, :destroy]

  # GET /biofeeds
  # GET /biofeeds.json
  def index
    @biofeeds = Biofeed.all
  end

  # GET /biofeeds/1
  # GET /biofeeds/1.json
  def show
  end

  # GET /biofeeds/new
  def new
    @biofeed = Biofeed.new
  end

  # GET /biofeeds/1/edit
  def edit
  end

  # POST /biofeeds
  # POST /biofeeds.json
  def create
    @biofeed = Biofeed.new(biofeed_params)

    respond_to do |format|
      if @biofeed.save
        format.html { redirect_to @biofeed, notice: 'Biofeed was successfully created.' }
        format.json { render action: 'show', status: :created, location: @biofeed }
      else
        format.html { render action: 'new' }
        format.json { render json: @biofeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biofeeds/1
  # PATCH/PUT /biofeeds/1.json
  def update
    respond_to do |format|
      if @biofeed.update(biofeed_params)
        format.html { redirect_to @biofeed, notice: 'Biofeed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @biofeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biofeeds/1
  # DELETE /biofeeds/1.json
  def destroy
    @biofeed.destroy
    respond_to do |format|
      format.html { redirect_to biofeeds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biofeed
      @biofeed = Biofeed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biofeed_params
      params.require(:biofeed).permit(:description)
    end
end
