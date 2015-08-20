class Doctor < ActiveRecord::Base
 has_many :appointments
 has_many :animals, :through => :appointments
 
 validates :name, presence: true
 validates :name, length: {maximum: 35}
 validates :zip, length: {maximum: 5}
 validates :years_of_practice, inclusion: {in: 1..100,
    message:"%{value} is not valid. Please enter value between 1-100" }

 
end
