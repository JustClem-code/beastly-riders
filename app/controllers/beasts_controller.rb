class BeastsController < ApplicationController
  def index
    @beasts = Beast.all
  end
end
