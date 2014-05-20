GraveInfo::Application.routes.draw do
  devise_for :users
  root to: "home#index.html"
  resources :users
  resources :graves
end
