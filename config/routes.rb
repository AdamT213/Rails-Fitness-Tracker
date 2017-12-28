Rails.application.routes.draw do

  devise_for :users

  resources :fitness_plans

  resources :goals, only: [:new, :create, :show, :delete]

  resources :workout_routines do

    resources :exercises, only: [:new, :create]

  end

  resources :exercises, only: [:new, :create]


root 'welcome#home'

end
