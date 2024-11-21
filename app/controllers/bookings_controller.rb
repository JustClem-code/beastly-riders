class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @beast = Beast.find(params[:beast_id])
  end

  def create
    @user = current_user
    @beast = Beast.find(params[:beast_id])

    # Crée une nouvelle instance de Booking avec les bons paramètres
    @booking = Booking.new(booking_params)

    # Associe les relations à l'objet Booking
    @booking.user = @user
    @booking.beast = @beast

    # Attribut le statut "created" à la nouvelle reservation
    @booking.status = "created"

    # Tente de sauvegarder et gère les résultats
    if @booking.save
      redirect_to beast_path(@beast), notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = "modified"
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :beast_id, :user_id)
  end
end
