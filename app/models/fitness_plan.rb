class FitnessPlan < ActiveRecord::Base
  belongs_to :user
  belongs_to :workout_routine
end
