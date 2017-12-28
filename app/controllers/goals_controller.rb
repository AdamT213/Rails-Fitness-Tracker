class Goals_Controller.rb

  def new
  end

  def create
    @goal = goal.create(goal_params)
    if @goal.save
      redirect_to user_path(@goal.user)
    else
      flash[:alert] = "There was a problem saving your goal. Please try again."
      render :new
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:description, :status, :user_id)
  end
end
