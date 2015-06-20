json.array!(@user_reserves) do |user_reserf|
  json.extract! user_reserf, :id, :date, :doctor_id, :reserve_id, :user_id, :turn
  json.url user_reserf_url(user_reserf, format: :json)
end
