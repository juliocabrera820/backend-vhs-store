json.data do
  json.movie_genre do
    json.partial! 'api/v1/movie_genres/movie_genre', movie_genre: @movie_genre
  end
end