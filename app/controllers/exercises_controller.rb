class ExercisesController < ApplicationController

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
    if params[:workout_routine_id]
       @exercise.workout_routine = WorkoutRoutine.find[:workout_routine_id]
      redirect_to workout_routine_path(@exercise.workout_routine)
    else
      if @exercise.save
        redirect_to exercise_path(@exercise)
      else
        render :new
      end
    end
  end

  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :sets, :reps, :target, :workout_routine_name)
  end
end
