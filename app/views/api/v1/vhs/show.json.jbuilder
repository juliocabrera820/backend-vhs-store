json.data do
  json.vhs do
    json.partial! 'api/v1/vhs/vhs', vhs: @vhs
  end
end