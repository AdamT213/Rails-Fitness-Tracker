class WorkoutRoutine < ActiveRecord::Base
  has_many :exercises
  has_many :fitness_plans
  has_many :users, through: :fitness_plans

  validates :name, uniqueness: true

  def exercises_attributes=(exercise_attributes)
    exercise_attributes.values.each do |exercise_attribute|
      if exercise_attribute["name"] != ""
        exercise = Exercise.find_or_create_by(exercise_attribute)
        self.exercises << exercise
      end
    end
  end
end
