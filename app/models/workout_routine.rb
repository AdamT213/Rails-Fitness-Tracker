class WorkoutRoutine < ActiveRecord::Base
  has_many :exercises
  has_many :fitness_plans
  has_many :users, through: :fitness_plans
end
