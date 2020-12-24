json.status 200
json.message 'movie genres loaded'
json.data do
  json.array! @movie_genres, partial: 'api/v1/movie_genres/movie_genre', as: :movie_genre
end