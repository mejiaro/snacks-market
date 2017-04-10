Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
  	get 'search', on: :collection
  end
  #get 'products/search', to: 'products#search'
  post 'products/like', to: 'products#like'
  post 'auth/login', to: 'authentication#authenticate'
end
