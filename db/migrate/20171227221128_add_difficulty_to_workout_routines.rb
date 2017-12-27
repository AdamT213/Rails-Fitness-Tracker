class AddDifficultyToWorkoutRoutines < ActiveRecord::Migration
  def change
    add_column :workout_routines, :difficulty, :string
  end
end
