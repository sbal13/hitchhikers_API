class AlienRace < ApplicationRecord
	has_many :populations
	has_many :planets, through: :populations
end
