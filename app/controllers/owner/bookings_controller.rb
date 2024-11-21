class Owner::BookingsController < ApplicationController
  def accept
    # Récupére la reservation
    @booking = Booking.find(params[:id])
    # Modifie la valeur associée à status en "validated"
    @booking.update_attibute(:status, "validated")
    redirect_to owner_bookings_path, status: :see_other
  end

  def decline
    # Récupére la reservation
    @booking = Booking.find(params[:id])
    # Modifie la valeur associée à status en "canceled"
    @booking.update_attibute(:status, "canceled")
    redirect_to owner_bookings_path, status: :see_other
  end
  
  def index
    @bookings = Booking.where(user: current_user)
  end
end
