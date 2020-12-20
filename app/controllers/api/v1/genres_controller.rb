class Api::V1::GenresController < ApplicationController
  before_action :set_genre, only: %i[show update delete]

  def index
    @genres = Genre.all
    render json: @genres, status: :ok
  end

  def show
    render json: @rental
  end

  def create
    @rental = Genre.new(genre_params)
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
    @rental = Genre.new(genre_params)
    if @rental.update
      render json: @rental, status: :created, location: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  private

  def set_genre
    @rental = Genre.find(params[:id])
  end

  def genre_params
    params.permit(:name)
  end
end
