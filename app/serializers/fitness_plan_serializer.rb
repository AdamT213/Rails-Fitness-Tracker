class FitnessPlanSerializer < ActiveModel::Serializer
  attributes :id, :duration 
  belongs_to :workout_routine
end
