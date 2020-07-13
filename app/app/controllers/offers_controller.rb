class OffersController < ApplicationController
  before_action :find_offer, only: %w[show]
  
  def index
    @offers = Offer.search(params[:search]).order(created_at: :desc).paginate page: params[:page], per_page: 10
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)

    if @offer.save
      flash[:notice] = "Your offer has been sent to admin for verification before publication"
      redirect_to '/'
    else 
      render 'new'
    end
  end

  def show
  end

  def search
  end

  private

  def offer_params
    params.require(:offer).permit(:name, :description, :postal_code, :email, :phone_number, :price, :photo)
  end

  def find_offer
    @offer = Offer.find(params[:id])
  end
end
