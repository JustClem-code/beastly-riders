class Owner::BeastsController < ApplicationController
  def index
    @beasts = Beast.where(owner: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
