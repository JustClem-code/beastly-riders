class BeastsController < ApplicationController
  def index
    @beasts = Beast.all
  end
  def show
  end
end
