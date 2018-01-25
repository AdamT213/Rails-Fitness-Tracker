class WorkoutRoutinesController < ApplicationController

  def new
    @workout_routine = WorkoutRoutine.new 
    10.times { @workout_routine.exercises.build }
  end

  def create
    @workout_routine = WorkoutRoutine.create(workout_routine_params)
    render json: @workout_routine, status: 201
  end

  def show
    @workout_routine = WorkoutRoutine.find(params[:id]) 
    render json: @workout_routine
  end

  def index
    @workout_routines = WorkoutRoutine.all
  end

  private

  def workout_routine_params
    params.require(:workout_routine).permit(:name, :split_length, :difficulty, :category, :exercise_ids => [],
    exercises_attributes: [:name, :target, :sets, :reps])
  end
end
