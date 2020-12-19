class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render json: @movies
  end

  def create
    @movie = Movie.create(movie_params)
  end

  private

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :featured_image)
  end
end
