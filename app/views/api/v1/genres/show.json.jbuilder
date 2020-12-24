json.data do
  json.genre do
    json.partial! 'api/v1/genres/genre', genre: @genre
  end
end