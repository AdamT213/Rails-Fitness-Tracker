class Goal < ActiveRecord::Base
  belongs_to :user

  def accomplish_goal
    self.status = true
  end
end
