class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :sets
      t.integer :reps
      t.string :target
    end
  end
end
