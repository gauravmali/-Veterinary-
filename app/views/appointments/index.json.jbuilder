json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :customer_name, :appoint_remind, :reason, :doctor_id, :animal_id
  json.url appointment_url(appointment, format: :json)
end
