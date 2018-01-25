class FitnessPlanSerializer < ActiveModel::Serializer
  attributes :id, :duration, :user_id
  belongs_to :workout_routine
end
