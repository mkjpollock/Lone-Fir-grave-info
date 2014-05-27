GraveInfo::Application.routes.draw do
  root to: "home#index.html"
  devise_for :users
  resources :users
  resources :graves do
	  resources :base_materials, :only => [:new, :create]
	  resources :directions, :only => [:new, :create]
	  resources :epitaphs, :only => [:new, :create]
	  resources :famnames, :only => [:new, :create, :index]
	  resources :marker_conditions, :only => [:new, :create]
	  resources :marker_materials, :only => [:new, :create]
	  resources :marker_types, :only => [:new, :create]
	end
end
