class BiofeedsController < ApplicationController
  before_action :set_biofeed, only: [:show, :edit, :update, :destroy]

  def index
    @biofeeds = Biofeed.all
  end
  
  def show
  end

  def new
    @biofeed = Biofeed.new
  end

  def edit
  end

  def create
    @biofeed = Biofeed.new(biofeed_params)

      if @biofeed.save
        redirect_to @biofeed, notice: 'Biofeed was successfully created.'
      else
        render action: 'new'
      end
  end

  def update
      if @biofeed.update(biofeed_params)
        redirect_to @biofeed, notice: 'Biofeed was successfully updated.'
      else
        render action: 'edit'
      end
  end

  def destroy
    @biofeed.destroy
      redirect_to biofeeds_url
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
