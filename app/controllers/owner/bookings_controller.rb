class Owner::BookingsController < ApplicationController
  def index
    # @bookings = Booking.where(owner: current_user)
    @bookings = Booking.all
  end



end
