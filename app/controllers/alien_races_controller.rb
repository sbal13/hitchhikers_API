class AlienRacesController < ApplicationController
	def index
		render json: AlienRace.all
	end

	def populations
		begin
			alien_race = AlienRace.find(params["alien_race_id"])
			render json: alien_race.populations
		rescue ActiveRecord::RecordNotFound
			render json: {message: "That ain't no alien I ever heard of!"}
		end
	end
end