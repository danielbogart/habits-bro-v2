class DailiesController < ApplicationController
  def create
  	@daily = Daily.new(daily_params)
	if @daily.valid?
		@daily.save
		redirect_to root_path, :notice => "Your daily has been added"
	else
		redirect_to root_path, :error => "Error"
	end
  end

  def daily_params
  	params.require(:daily).permit(:name, :user_id)
  end

  def augment_streak
  	@daily = Daily.find(params[:id])
  	@daily.update_attributes(:streak => @daily.streak+1)
  	redirect_to root_path, :notice => "NIIIIIIZE"
  end
end
