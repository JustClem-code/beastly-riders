class BeastsController < ApplicationController
  def index
    @beasts = Beast.all
    @user_beast = Beast.where(owner: current_user)
  end

  def new
    @beast = Beast.new
  end

  def create
    @beast = Beast.new(beast_params)
    @beast.owner = current_user
    if @beast.save
      redirect_to beast_path(@beast)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @beast = Beast.find(params[:id])
  end

  def destroy
    @beast = Beast.find(params[:id])
    @beast.delete
    redirect_to beasts_path, status: :see_other
  end

  private

  def beast_params
    params.require(:beast).permit(:name, :description, :price_per_day, :image, :category, :speed)
  end
end
