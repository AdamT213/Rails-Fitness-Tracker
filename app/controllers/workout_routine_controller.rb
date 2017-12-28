class WorkoutRoutineController < ApplicationController

  def new
    @workout_routine = WorkoutRoutine.new
  end

  def create
    @workout_routine = WorkoutRoutine.create(workout_routine_params)
    if @workout_routine.save
      redirect_to workout_routine_path(@workout_routine)
    else
      render :new
    end
  end

  def show
  end

  def index
  end

  private

  def workout_routine_params
    params.require(:workout_routine).permit(:name, :split_length, :difficulty, :exercise_ids => [])
  end
end
