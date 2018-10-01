Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :create]
  resources :users, only: [:create]
  resources :user_recipes, only: [:create, :index, :destroy, :update]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
