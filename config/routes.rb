Rails.application.routes.draw do
  get 'signup', to:'users#new'
  get '/about', to: "pages#about"
  root "pages#home"

  resources :users
end
