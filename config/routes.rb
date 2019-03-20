Rails.application.routes.draw do
  root to: 'zones#index'
  # resources :zones do
  #   resources :animals
  # end
  resources :animals do
    get "delete"
  end
  resources :zones do
    get "delete"
  end
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
