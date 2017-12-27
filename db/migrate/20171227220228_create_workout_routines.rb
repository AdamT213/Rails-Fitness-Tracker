class CreateWorkoutRoutines < ActiveRecord::Migration
  def change
    create_table :workout_routines do |t|
      t.integer :split_length
    end
  end
end
