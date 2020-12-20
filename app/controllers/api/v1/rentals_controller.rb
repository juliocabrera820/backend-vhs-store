class Api::V1::RentalsController < ApplicationController
  before_action :set_rental, only: %i[show update delete]

  def index
    @rentals = Rental.all
    render json: @rentals, status: :ok
  end

  def show
    render json: @rental
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      render json: @rental, status: :created, location: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rental.destroy
  end

  def update
    @rental = Rental.new(rental_params)
    if @rental.update
      render json: @rental, status: :created, location: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.permit()
  end
end
