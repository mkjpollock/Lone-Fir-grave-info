GraveInfo::Application.routes.draw do
  root to: "home#index.html"
  devise_for :users
  resources :users
  resources :graves
end
