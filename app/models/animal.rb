class Animal < ActiveRecord::Base
 has_many :appointments
 has_many :doctors, :through => :appointments

 validates :name, :type_of_animal, :breed, :age, :weight, presence: true
 validates :name, :breed, length: {maximum: 35}
validates :type_of_animal, inclusion: { in: %w(dog cat bird),
    message: "%{value} is not a valid only Dog/Cat/Bird" }

end
