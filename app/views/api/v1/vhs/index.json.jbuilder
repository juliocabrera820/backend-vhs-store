json.status 200
json.message 'vhs loaded'
json.data do
  json.array! @vhs, partial: 'api/v1/vhs/vhs', as: :vhs
end