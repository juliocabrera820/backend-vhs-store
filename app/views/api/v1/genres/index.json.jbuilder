json.data do
  json.array! @genres, partial: 'api/v1/genres/genre', as: :genre
end