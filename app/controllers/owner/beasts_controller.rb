class Owner::BeastsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def dashboard
    @beast = Beast.all
    @user = current_user
  end

end
