class RestaurantsController < ApplicationController
  before_action :set_restaurants, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(rest_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was added'
    else
      render :new
    end
    # redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    if @restaurant.update(rest_params)
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant was updated'
    else
      render :edit
    end
    # @restaurant.save
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end
  def rest_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
