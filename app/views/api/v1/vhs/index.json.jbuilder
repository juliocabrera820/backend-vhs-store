json.data do
  json.array! @vhs, partial: 'api/v1/vhs/vhs', as: :vhs
end