json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :type_of_animal, :breed, :age, :weight
  json.url animal_url(animal, format: :json)
end
