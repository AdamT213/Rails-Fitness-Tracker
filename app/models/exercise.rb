class Exercise < ActiveRecord::Base
  belongs_to :workout_routine
  validates :name, presence: true
  def workout_routine_name
    self.try(:workout_routine).try(:name)
  end

  def workout_routine_name=(name)
    workout_routine = WorkoutRoutine.find_or_create_by(name: name)
    self.workout_routine = workout_routine
  end
end
