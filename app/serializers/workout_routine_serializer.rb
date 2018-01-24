class WorkoutRoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :difficulty, :split_length 
  has_many :exercises
end
