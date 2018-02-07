class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  validates :first_name , :last_name, :speciality, :postal_code, presence: true 
end
