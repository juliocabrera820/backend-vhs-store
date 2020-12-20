class Api::V1::MoviesController < ApplicationController
  before_action :set_movie, only: %i[show update delete]

  def index
    @movies = Movie.all
    render json: @movies, status: :ok
  end

  def show
    render json: @rental
  end

  def create
    @rental = Movie.new(movie_params)
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
    @rental = Movie.new(movie_params)
    if @rental.update
      render json: @rental, status: :created, location: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  private

  def set_movie
    @rental = Movie.find(params[:id])
  end

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :featured_image)
  end
end
