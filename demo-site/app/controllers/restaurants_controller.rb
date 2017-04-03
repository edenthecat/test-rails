class RestaurantsController < ApplicationController
  RESTAURANTS = [
    {name: "Chez Claudette", address: "Poutine Street", category: "greasy"},
    {name: "Arby's", address: "Ham Street", category: "hammy"}
  ]

  def index
    @category = params[:food_type]

    if @category
      @restaurants = RESTAURANTS.select { |r| r[:category] == @category}
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    @name = params[:name]
    @address = params[:address]
  end

  def show
    id = params[:id].to_i
    @restaurant = RESTAURANTS[id]
  end
end
