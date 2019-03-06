Rails.application.routes.draw do
  resources :zones
  devise_for :users
  root to: 'zones#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
