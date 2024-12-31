class AdvertisementsController < ApplicationController
  def index
    @pagy, @advertisements =
      pagy_countless(
        Advertisement.active.includes(:car_product, :user),
        items: 10
      )

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end
end
