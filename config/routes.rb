Rails.application.routes.draw do
  
  
  resources :computers
  resources :games
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
