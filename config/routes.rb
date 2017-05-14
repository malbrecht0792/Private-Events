Rails.application.routes.draw do
 
 	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	resources :sessions, only: [:new, :create]
 	resources :users, only: [:new, :create, :show]

end
