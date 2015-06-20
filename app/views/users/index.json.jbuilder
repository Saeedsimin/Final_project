json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :name, :family, :gender, :phone, :insuranceNumber, :bloodType, :records
  json.url user_url(user, format: :json)
end
