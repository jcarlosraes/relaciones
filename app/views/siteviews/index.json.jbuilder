json.array!(@siteviews) do |siteview|
  json.extract! siteview, :id, :renovation_id, :visit_date, :completed
  json.url siteview_url(siteview, format: :json)
end
