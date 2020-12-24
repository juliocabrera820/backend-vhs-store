class Api::V1::GenresController < ApplicationController
  before_action :set_genre, only: %i[show update destroy]

  def index
    @genres = Genre.all
    render :index
  end

  def show
    render :show
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      render json: @genre, status: :created
    else
      render json: @genre.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @genre.destroy!
    head :no_content
  end

  def update
    @genre = Genre.new(genre_params)
    if @genre.update
      render json: @genre, status: :created
    else
      render json: @genre.errors, status: :unprocessable_entity
    end
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.permit(:name)
  end
end
