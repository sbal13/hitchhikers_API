class Planet < ApplicationRecord
	has_many :populations
	has_many :alien_races, through: :populations
end
