Rails.application.routes.draw do

  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, only: [:show, :index, :edit, :update]

  resources :goals, only: [:new, :create]

  patch '/goals/:id/accomplish', to: 'goals#accomplish', as: :goals_accomplish

  resources :workout_routines  do

    resources :exercises, only: [:new, :create]
    resources :fitness_plans

  end

  resources :exercises, only: [:new, :create, :show, :index]

  resources :fitness_plans

root 'workout_routines#index'

end
