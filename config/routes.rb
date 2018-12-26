Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper do
    skip_controllers :applications, :authorized_applications
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
  	get 'search', on: :collection
  	post 'like', on: :member
  end
  resources :orders, only: [:create]
end
