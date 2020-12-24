class Api::V1::MoviesController < ApplicationController
  before_action :set_movie, only: %i[show update destroy]

  def index
    @movies = Movie.all
    render :index
  end

  def show
    render :show
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie, status: :created
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @movie.destroy
    head :no_content
  end

  def update
    @movie = Movie.new(movie_params)
    if @movie.update
      render json: @movie, status: :created
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :featured_image)
  end
end
