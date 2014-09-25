class DailyController < ApplicationController
  def augment_streak
  	@daily = Daily.find(params[:id])
  	@daily.update_attributes(:streak => @daily.streak+1)
  	redirect_to root_path, :notice => "NIIIIIIZE"
  end
end
