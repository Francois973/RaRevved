class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.active.includes(:car_product, :user)
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end
end
