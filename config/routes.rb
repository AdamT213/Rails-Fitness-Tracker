Rails.application.routes.draw do

  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, only: :show

  resources :fitness_plans

  resources :goals, only: [:new, :create, :show, :delete]

  resources :workout_routines do

    resources :exercises, only: [:new, :create]

  end

  resources :exercises, only: [:new, :create]


root 'workout_routines#index'

end
