class Goal < ActiveRecord::Base
  belongs_to :user

  def accomplish_goal
    self.status = true
    self.save
  end
end
