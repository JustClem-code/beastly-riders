class Owner::BeastsController < ApplicationController
  def index
    @user_beasts = Beast.where(owner: current_user)
  end
end
