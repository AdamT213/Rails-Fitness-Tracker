Rails.application.routes.draw do

  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, only: [:show]

  resources :fitness_plans

  resources :goals, only: [:new, :create]

  get '/goals/accomplish'

  post '/goals/accomplish'

  resources :workout_routines do

    resources :exercises, only: [:new, :create]
    resources :fitness_plans

  end

  resources :exercises, only: [:new, :create, :show, :index]


root 'workout_routines#index'

end
