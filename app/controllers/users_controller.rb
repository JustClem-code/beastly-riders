class UsersController < ApplicationController
  def dashboard
    @is_owner = Beast.where(owner: current_user).present?
  end
end
