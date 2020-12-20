class Api::V1::MovieGenresController < ApplicationController
  before_action :set_movie_genre, only: %i[show update delete]

  def index
    @movie_genres = MovieGenre.all
    render json: @movie_genres, status: :ok
  end

  def show
    render json: @rental
  end

  def create
    @rental = MovieGenre.new(movie_genre_params)
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
    @rental = MovieGenre.new(movie_genre_params)
    if @rental.update
      render json: @rental, status: :created, location: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  private

  def set_movie_genre
    @rental = MovieGenre.find(params[:id])
  end

  def movie_genre_params
    params.permit()
  end
end
