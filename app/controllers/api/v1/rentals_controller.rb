class Api::V1::RentalsController < ApplicationController
  before_action :set_rental, only: %i[show update destroy]

  def index
    @rentals = Rental.all
    render :index
  end

  def show
    render :show
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      render json: @rental, status: :created
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rental.destroy
    head :no_content
  end

  def update
    @rental = Rental.new(rental_params)
    if @rental.update
      render json: @rental, status: :created
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  private

  def set_rental
    @rental = Rental.find_by(vhs_id: params[:vhs_id].to_i, client_id: params[:client_id].to_i)
  end

  def rental_params
    params.permit(:client_id, :vhs_id)
  end
end
