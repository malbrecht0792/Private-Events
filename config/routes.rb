Rails.application.routes.draw do

 	get    '/signup',   to: 'users#new'
  	post   '/signup',   to: 'users#create'
 	get    '/login',   to: 'sessions#new'
  	post   '/login',   to: 'sessions#create'
  	resources :sessions, only: [:new, :create]
 	resources :users, only: [:new, :create, :show]
 	resources :events, only: [:new, :create, :show, :index]
 	resources :invitations, only: [:create, :destroy]

end
