class GoalsController < ApplicationController
  def create
  	@goal = Goal.new(goal_params)
	if @goal.valid?
		@goal.save
		redirect_to root_path, :notice => "Your goal has been added"
	else
		redirect_to root_path, :error => "Error"
	end
  end

  def goal_params
  	params.require(:goal).permit(:name, :target_date, :user_id)
  end

  def augment_streak
  	@goal = Goal.find(params[:id])
  	@goal.update_attributes(:streak => @goal.streak+1)
  	redirect_to root_path, :notice => "NIIIIIIZE"
  end

  def destroy
  	Goal.find(params[:id]).destroy
  	redirect_to root_path, :notice => "Your goal has been DESTROYED"
  end
end
