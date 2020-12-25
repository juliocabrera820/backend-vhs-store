class Api::V1::MovieGenresController < ApplicationController
  before_action :set_movie_genre, only: %i[show update destroy]

  def index
    @movie_genres = MovieGenre.all
    render json: @movie_genres.to_json(only: [:id], include: {
      movie: { only: [:title] },
      genre: { only: [:name] }
    }), status: :ok
  end

  def show
    render json: @movie_genre.to_json(only: [:id], include: {
      movie: { only: [:title] },
      genre: { only: [:name] }
    })
  end

  def create
    @movie_genre = MovieGenre.new(movie_genre_params)
    if @movie_genre.save
      render json: @movie_genre, status: :created
    else
      render json: @movie_genre.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @movie_genre.destroy
    head :no_content
  end

  def update
    if @movie_genre.update(movie_genre_params)
      render json: @movie_genre, status: :created
    else
      render json: @movie_genre.errors, status: :unprocessable_entity
    end
  end

  private

  def set_movie_genre
    @movie_genre = MovieGenre.find_by(movie_id: params[:movie_id].to_i, genre_id: params[:genre_id].to_i)
  end

  def movie_genre_params
    params.permit(:movie_id, :genre_id)
  end
end
