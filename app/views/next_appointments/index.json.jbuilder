json.array!(@next_appointments) do |next_appointment|
  json.extract! next_appointment, :id, :next_date, :appointment_id
  json.url next_appointment_url(next_appointment, format: :json)
end
