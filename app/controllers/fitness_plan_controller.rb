class FitnessPlanController < ApplicationController

  def new
  end

  def create
    workout_routine = params[:workout_routine_id]
    if current_user
      current_user.fitness_plans << workout_routine
    end
    current_user.save
    redirect_to user_path(current_user)
  end

  def edit
    workout = current_user.fitness_plans.find[:id]
  end

  def update
    workout = current_user.fitness_plans.find[:id]
    if workout.update(workout_params)
      current_user.save
      redirect_to user_path(current_user)
    else
      flash[:error] = "There was a problem updating your fitness plan. Please try again."
      render :edit
    end
  end

  def destroy
    fitness_plan = current_user.fitness_plans.find[:id]
    current_user.fitness_plans.delete(fitness_plan)
    redirect_to user_path(current_user)
  end

  private
    def workout_params
      params.require(:workout_routine).permit(:name, :split_length, :difficulty, :category, :exercise_ids => [])
    end
end
