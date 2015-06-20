json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :doctorNum, :address, :speciality, :name, :family, :gender, :phone
  json.url doctor_url(doctor, format: :json)
end
