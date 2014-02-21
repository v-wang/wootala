class BiofeedsController < ApplicationController
  before_action :set_biofeed, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @biofeeds = Biofeed.all
  end
  
  def show
  end

  def new
    @biofeed = current_user.biofeeds.build
  end

  def edit
  end

  def create
    @biofeed = current_user.biofeeds.build(biofeed_params)

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
      @biofeed = Biofeed.find_by(id: params[:id])
    end
  
    def correct_user
      @biofeed = current_user.biofeeds.find_by(id: params[:id])
      redirect_to biofeeds_path, notice: "Not authorized to edit this pin" if @biofeed.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biofeed_params
      params.require(:biofeed).permit(:description)
    end
end
