json.array!(@locations) do |location|
  json.extract! location, :id, :department, :responsable, :email
  json.url location_url(location, format: :json)
end
