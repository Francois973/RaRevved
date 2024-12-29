class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.active.includes(:car_product, :user)
  end
end
