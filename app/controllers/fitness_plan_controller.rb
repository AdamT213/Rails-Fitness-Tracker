class FitnessPlanController < ApplicationController

  def new
  end

  def create
    workout_routine = params[:workout_routine_id]
    if current_user
      current_user.fitness_plans < workout_routine
    end
    current_user.save
    redirect_to user_path(current_user)
  end
end
