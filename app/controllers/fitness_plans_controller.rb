class FitnessPlansController < ApplicationController

  def new
    @fitness_plan = FitnessPlan.new
    @workout_routine_id = params[:workout_routine_id].to_i
  end

  def create
    @fitness_plan = FitnessPlan.create(fitness_plan_params)
    @fitness_plan.user_id = current_user.id
    current_user.fitness_plans << @fitness_plan
    if params[:workout_routine_id]
       @fitness_plan.workout_routine = WorkoutRoutine.find_by(id: params[:workout_routine_id])
       redirect_to user_path(current_user)
    else
      if @fitness_plan.save
        redirect_to user_path(current_user)
      else
        render :new
      end
    end
  end

  def show
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      @plan = @user.fitness_plans.find_by(id: params[:id])
      if !@plan
        flash[:alert] = "Fitness plan not found"
        redirect_to user_path(@user)
      end
    else
      @plan = FitnessPlan.find(params[:id])
    end
  end 
  
  def index 
    @plans = FitnessPlan.all 
    render json: @plans 
  end

  private
    def fitness_plan_params
      params.require(:fitness_plan).permit(:user_id, :workout_routine_id, :duration)
    end
end
