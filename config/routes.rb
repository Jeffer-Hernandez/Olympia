Rails.application.routes.draw do

  root 'sessions#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  delete '/signup' => 'users#create'


  resources :workouts
  resources :sessions
  resources :competitions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
