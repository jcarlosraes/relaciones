json.array!(@devices) do |device|
  json.extract! device, :id, :name, :unam_stock_number, :location_id
  json.url device_url(device, format: :json)
end
