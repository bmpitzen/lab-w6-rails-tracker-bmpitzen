class Api::V1::CoffeesController < ApplicationController
  before_action :set_coffee, only: [:show, :update, :destroy]

  def index
    @coffees = Coffee.all
  end

  def show
  end

  def create
    @coffee = Coffee.new(coffee_params)

    if @coffee.save
      render json: @coffee, status: :created, location: @coffee
    else
      render json: @coffee.errors, status: :unprocessable_entity
    end
  end

  def update
    if @coffee.update(coffee_params)
      render json: @coffee
    else
      render json: @coffee.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @coffee.destroy
  end

  private

  def set_coffee
    @coffee = Coffee.find(params[:id])
  end

  def coffee_params
    params.require(:coffee).permit(:id, :blend_name, :origin, :variety, :notes)
  end
end
