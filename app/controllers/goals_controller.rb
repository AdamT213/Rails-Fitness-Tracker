class GoalsController < ApplicationController

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.create(goal_params)
    if @goal.save
      current_user.goals << @goal
      redirect_to user_path(current_user)
    else
      flash[:notice] = "There was a problem saving your goal. Please try again."
      render :new
    end
  end

  def accomplish
    @goal = Goal.find(params[:id])
    @goal.accomplish_goal
    @goal.save
    redirect_to user_path(current_user)
  end

  private

  def goal_params
    params.require(:goal).permit(:description, :status, :user_id)
  end
end
