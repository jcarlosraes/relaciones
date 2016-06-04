json.array!(@contracts) do |contract|
  json.extract! contract, :id, :device_id, :supplier_id, :contract_no, :description
  json.url contract_url(contract, format: :json)
end
