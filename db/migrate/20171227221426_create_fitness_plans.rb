class CreateFitnessPlans < ActiveRecord::Migration
  def change
    create_table :fitness_plans do |t|
      t.integer :user_id
      t.integer :workout_routine_id
      t.integer :duration
    end
  end
end
