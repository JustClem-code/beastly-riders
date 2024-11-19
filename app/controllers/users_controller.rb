class UsersController < ApplicationController

  def dashboard
    @beast = Beast.all
    @user = current_user
  end

end
