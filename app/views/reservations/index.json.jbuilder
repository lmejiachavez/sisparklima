json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :date_current, :cost, :number_confirmation
  json.url reservation_url(reservation, format: :json)
end
