json.array!(@parkings) do |parking|
  json.extract! parking, :id, :state, :hour_start, :hour_end, :date_start, :date_end, :description, :type_rent, :name_favorite, :state_favorite
  json.url parking_url(parking, format: :json)
end
