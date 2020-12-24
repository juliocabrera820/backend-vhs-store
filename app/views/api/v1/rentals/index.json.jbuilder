json.data do
  json.array! @rentals, partial: 'api/v1/rentals/rental', as: :rental
end