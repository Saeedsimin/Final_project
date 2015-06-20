json.array!(@doctor_adds) do |doctor_add|
  json.extract! doctor_add, :id, :from, :to, :total, :used, :docName, :docFamily, :speciality
  json.url doctor_add_url(doctor_add, format: :json)
end
