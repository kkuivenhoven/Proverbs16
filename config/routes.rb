Rails.application.routes.draw do

	namespace :api do
		namespace :v1 do
			resources :niv_bible, only: [:index]
		end
	end

  get 'niv_bible/proverbs'

  get '/google0d522795c8df8607.html',
    to: proc { |env| [200, {}, ["google-site-verification: google0d522795c8df8607.html"]] }

	root controller: :static_pages, action: :home

end
