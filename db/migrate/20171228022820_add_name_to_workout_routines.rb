class AddNameToWorkoutRoutines < ActiveRecord::Migration
  def change
    add_column :workout_routines, :name, :string
  end
end
