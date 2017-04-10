Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
  	get 'search', on: :collection
  	post 'like', on: :member
  end
  resources :orders, only: [:create]
  post 'auth/login', to: 'authentication#authenticate'
end
