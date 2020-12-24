json.status 200
json.message 'rentals loaded'
json.data do
  json.array! @rentals, partial: 'api/v1/rentals/rental', as: :rental
end