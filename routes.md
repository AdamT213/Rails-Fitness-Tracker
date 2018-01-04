                               Prefix Verb     URI Pattern                                                            Controller#Action
                     new_user_session GET      /users/sign_in(.:format)                                               devise/sessions#new
                         user_session POST     /users/sign_in(.:format)                                               devise/sessions#create
                 destroy_user_session DELETE   /users/sign_out(.:format)                                              devise/sessions#destroy
user_google_oauth2_omniauth_authorize GET|POST /users/auth/google_oauth2(.:format)                                    users/omniauth_callbacks#passthru
 user_google_oauth2_omniauth_callback GET|POST /users/auth/google_oauth2/callback(.:format)                           users/omniauth_callbacks#google_oauth2
                        user_password POST     /users/password(.:format)                                              devise/passwords#create
                    new_user_password GET      /users/password/new(.:format)                                          devise/passwords#new
                   edit_user_password GET      /users/password/edit(.:format)                                         devise/passwords#edit
                                      PATCH    /users/password(.:format)                                              devise/passwords#update
                                      PUT      /users/password(.:format)                                              devise/passwords#update
             cancel_user_registration GET      /users/cancel(.:format)                                                devise/registrations#cancel
                    user_registration POST     /users(.:format)                                                       devise/registrations#create
                new_user_registration GET      /users/sign_up(.:format)                                               devise/registrations#new
               edit_user_registration GET      /users/edit(.:format)                                                  devise/registrations#edit
                                      PATCH    /users(.:format)                                                       devise/registrations#update
                                      PUT      /users(.:format)                                                       devise/registrations#update
                                      DELETE   /users(.:format)                                                       devise/registrations#destroy
                                 user GET      /users/:id(.:format)                                                   users#show
                                goals POST     /goals(.:format)                                                       goals#create
                             new_goal GET      /goals/new(.:format)                                                   goals#new
                     goals_accomplish PATCH    /goals/:id/accomplish(.:format)                                        goals#accomplish
            workout_routine_exercises POST     /workout_routines/:workout_routine_id/exercises(.:format)              exercises#create
         new_workout_routine_exercise GET      /workout_routines/:workout_routine_id/exercises/new(.:format)          exercises#new
        workout_routine_fitness_plans GET      /workout_routines/:workout_routine_id/fitness_plans(.:format)          fitness_plans#index
                                      POST     /workout_routines/:workout_routine_id/fitness_plans(.:format)          fitness_plans#create
     new_workout_routine_fitness_plan GET      /workout_routines/:workout_routine_id/fitness_plans/new(.:format)      fitness_plans#new
    edit_workout_routine_fitness_plan GET      /workout_routines/:workout_routine_id/fitness_plans/:id/edit(.:format) fitness_plans#edit
         workout_routine_fitness_plan GET      /workout_routines/:workout_routine_id/fitness_plans/:id(.:format)      fitness_plans#show
                                      PATCH    /workout_routines/:workout_routine_id/fitness_plans/:id(.:format)      fitness_plans#update
                                      PUT      /workout_routines/:workout_routine_id/fitness_plans/:id(.:format)      fitness_plans#update
                                      DELETE   /workout_routines/:workout_routine_id/fitness_plans/:id(.:format)      fitness_plans#destroy
                     workout_routines GET      /workout_routines(.:format)                                            workout_routines#index
                                      POST     /workout_routines(.:format)                                            workout_routines#create
                  new_workout_routine GET      /workout_routines/new(.:format)                                        workout_routines#new
                 edit_workout_routine GET      /workout_routines/:id/edit(.:format)                                   workout_routines#edit
                      workout_routine GET      /workout_routines/:id(.:format)                                        workout_routines#show
                                      PATCH    /workout_routines/:id(.:format)                                        workout_routines#update
                                      PUT      /workout_routines/:id(.:format)                                        workout_routines#update
                                      DELETE   /workout_routines/:id(.:format)                                        workout_routines#destroy
                            exercises GET      /exercises(.:format)                                                   exercises#index
                                      POST     /exercises(.:format)                                                   exercises#create
                         new_exercise GET      /exercises/new(.:format)                                               exercises#new
                             exercise GET      /exercises/:id(.:format)                                               exercises#show
                        fitness_plans GET      /fitness_plans(.:format)                                               fitness_plans#index
                                      POST     /fitness_plans(.:format)                                               fitness_plans#create
                     new_fitness_plan GET      /fitness_plans/new(.:format)                                           fitness_plans#new
                    edit_fitness_plan GET      /fitness_plans/:id/edit(.:format)                                      fitness_plans#edit
                         fitness_plan GET      /fitness_plans/:id(.:format)                                           fitness_plans#show
                                      PATCH    /fitness_plans/:id(.:format)                                           fitness_plans#update
                                      PUT      /fitness_plans/:id(.:format)                                           fitness_plans#update
                                      DELETE   /fitness_plans/:id(.:format)                                           fitness_plans#destroy
                                 root GET      /                                                                      workout_routines#index
