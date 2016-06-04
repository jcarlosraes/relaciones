json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :busines, :contact, :phone, :email
  json.url supplier_url(supplier, format: :json)
end
