class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    # raise
    @car = Car.find(params[:id])
    @review = Review.new
    @favourite = Favourite.new
  end
end
