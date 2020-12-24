json.status 200
json.message 'movies loaded'
json.data do
  json.array! @movies, partial: 'api/v1/movies/movie', as: :movie
end