class PlanetsController < ApplicationController
	def index
		render json: Planet.all
	end

	def create
		planet = Planet.create(name: params[:name], size: params[:size], description: params[:description], climate: params[:climate] )

		render json: planet
	end

	def populations
		begin
			planet = Planet.find(params["planet_id"])
			render json: planet.populations
		rescue ActiveRecord::RecordNotFound
			render json: {message: "Check your star charts! That planet doesn't exist!"}
		end
	end

	def destroy

		planet = Planet.find(params[:id])
		planet.destroy

		render json: {message: "Successfully deleted"}
	end
end