Rails.application.routes.draw do
	resources :alien_races, only: [:index, :create, :update, :destroy]
	resources :planets, only: [:index, :create, :update, :destroy]

	get '/planets/:planet_id/populations', to: 'planets#populations'
	get '/alien_races/:alien_race_id/populations', to: 'alien_races#populations'
end
