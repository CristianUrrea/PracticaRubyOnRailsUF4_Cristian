Rails.application.routes.draw do
  root to: 'zones#index'
  resources :api_zoo do
    collection do
      get "zones" => 'api_zoo#zones'
      get "animals" => 'api_zoo#animals'
    end
  end
  resources :animals do
    get "delete"
  end
  resources :zones do
    get "delete"
  end
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
