json.status 200
json.message 'clients loaded'
json.data do
  json.array! @clients, partial: 'api/v1/clients/client', as: :client
end