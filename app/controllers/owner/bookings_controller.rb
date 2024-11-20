class Owner::BookingsController < ApplicationController

  def accept
    @booking = Booking.find(params[:id])
    @booking.update_attibute(:status, "validated")
    redirect_to owner_bookings_path, status: :see_other
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update_attibute(:status, "canceled")
    redirect_to owner_bookings_path, status: :see_other
  end

end
