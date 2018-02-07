class Dogsitter < ApplicationRecord
	has_many :dogs, through: :stroll 
	has_many :strolls
end
