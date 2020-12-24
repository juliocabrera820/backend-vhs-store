json.data do
  json.rental do
    json.partial! 'api/v1/rentals/rental', rental: @rental
  end
end