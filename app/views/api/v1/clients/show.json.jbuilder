json.data do
  json.client do
    json.partial! 'api/v1/clients/client', client: @client
  end
end