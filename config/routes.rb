Rails.application.routes.draw do

  devise_for :users do

    resources :fitness_plans, only: [:new, :create, :show, :edit, :update]

    resources :goals, only: [:new, :create, :show, :delete]

  end

  resources :fitness_plans, only: [:new, :create, :show, :edit, :update]

  resources :goals, only: [:new, :create, :show, :delete]

  resources :workout_routines do

    resources :exercises, only: [:new, :create]

  end

  resources :exercises, only: [:new, :create]


root 'welcome#home'

end
