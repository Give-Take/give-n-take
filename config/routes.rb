Rails.application.routes.draw do
	root "home#index", as: :home

	get "register", to: "register#new"
	post "register", to: "register#create"


	get 'shop', to: 'shop#index'

	get 'contact_us', to: 'contact_us#index'
end
