json.array!(@ports) do |port|
  json.extract! port, :id, :port_code, :name, :geo, :country_id
  json.url port_url(port, format: :json)
end
