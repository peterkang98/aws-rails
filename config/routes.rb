Rails.application.routes.draw do
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to:'users#new'
  get '/about', to: "pages#about"
  root "pages#home"

  resources :users
  resources :account_activations, only: [:edit]
end
