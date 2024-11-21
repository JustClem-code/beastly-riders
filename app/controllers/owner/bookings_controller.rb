class Owner::BookingsController < ApplicationController
  def index
    # TODO: récupérer les locations
    @owner_beasts = Beast.where(owner: current_user)
    @bookings = Booking.where(beast: @owner_beasts)
  end

  def accept
    # Récupére la reservation
    @booking = Booking.find(params[:id])
    # Modifie la valeur associée à status en "validated"
    @booking.update_attribute(:status, "validated")
    redirect_to owner_bookings_path, status: :see_other
  end

  def decline
    # Récupére la reservation
    @booking = Booking.find(params[:id])
    # Modifie la valeur associée à status en "canceled"
    @booking.update_attribute(:status, "canceled")
    redirect_to owner_bookings_path, status: :see_other
  end
end
