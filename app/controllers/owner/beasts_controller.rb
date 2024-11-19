class Owner::BeastsController < ApplicationController
  def new
    @beast = Beast.new
  end

  def create
    @beast = Beast.new(beast_params)
    if @beast.save
      redirect_to owner_beast(@beast)
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def beast_params
    params.require(:beast).permit(:name, :description, :price_per_day, :image, :category, :speed)
  end
end
