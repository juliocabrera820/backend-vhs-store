json.data do
  json.array! @movies, partial: 'api/v1/movies/movie', as: :movie
end