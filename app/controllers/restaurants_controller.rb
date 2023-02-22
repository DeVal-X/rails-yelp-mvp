class RestaurantsController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @restaurant.save
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:task).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
