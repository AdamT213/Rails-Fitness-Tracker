class AddCategoryToWorkoutRoutines < ActiveRecord::Migration
  def change
    add_column :workout_routines, :category, :string
  end
end
