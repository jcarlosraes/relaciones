json.array!(@renovations) do |renovation|
  json.extract! renovation, :id, :contract_id, :start_date, :end_time
  json.url renovation_url(renovation, format: :json)
end
