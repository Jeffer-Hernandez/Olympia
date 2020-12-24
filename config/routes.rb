Rails.application.routes.draw do

  root 'sessions#index'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/competitions/:id/edit' => 'competitions#edit'
  post '/competitions/:id/edit' => 'competitions#update'



  resources :workouts do
    resources :training_sessions, only: [:index, :new, :create]
  end

  resources :competitions do
    resources :training_sessions
  end
  
  resources :training_sessions

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
