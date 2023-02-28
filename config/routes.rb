Rails.application.routes.draw do
  get 'artists/show'
  get 'search', to: 'search#show'
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to:'users#new'
  get '/about', to: "pages#about"
  root "pages#home"

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :songs, only: [:show]
  resources :artists, only: [:show]
  resources :albums, only: [:show]
end
