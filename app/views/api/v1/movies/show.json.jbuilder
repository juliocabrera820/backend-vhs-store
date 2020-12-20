json.data do
  json.movie do
    json.partial! 'api/v1/movies/movie', movie: @movie
  end
end