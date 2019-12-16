class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def create
    Car.create(
      make:params[:make],
      model:params[:model],
      year:params[:year],
      rating:params[:rating]
    )
    render json: {message:"Added new car"}
  end
end
