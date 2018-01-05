class WorkoutRoutinesController < ApplicationController

  def new
    @workout_routine = WorkoutRoutine.new
    @workout_routine.exercises.build
    @workout_routine.exercises.build
    @workout_routine.exercises.build
    @workout_routine.exercises.build
    @workout_routine.exercises.build
    @workout_routine.exercises.build
    @workout_routine.exercises.build
    @workout_routine.exercises.build
    @workout_routine.exercises.build
    @workout_routine.exercises.build
  end

  def create
    @workout_routine = WorkoutRoutine.create(workout_routine_params)
    if @workout_routine.save
      redirect_to workout_routine_path(@workout_routine)
    else
      flash[:notice] = "Workout Routine cannot have the same name as an existing routine"
      render :new
    end
  end

  def show
    @workout_routine = WorkoutRoutine.find(params[:id])
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
