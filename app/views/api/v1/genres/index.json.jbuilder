json.status 200
json.message 'genres loaded'
json.data do
  json.array! @genres, partial: 'api/v1/genres/genre', as: :genre
end