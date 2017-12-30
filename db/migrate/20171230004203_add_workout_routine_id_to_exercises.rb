class AddWorkoutRoutineIdToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :workout_routine_id, :integer
  end
end
