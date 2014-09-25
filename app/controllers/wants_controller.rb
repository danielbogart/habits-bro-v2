class WantsController < ApplicationController
  def create
  	@want = Want.new(want_params)
	if @want.valid?
		@want.save
		redirect_to root_path, :notice => "Your want has been added"
	else
		redirect_to root_path, :error => "Error"
	end
  end

  def want_params
  	params.require(:want).permit(:name, :purchase_condition, :user_id)
  end

  def augment_streak
  	@want = Want.find(params[:id])
  	@want.update_attributes(:streak => @want.streak+1)
  	redirect_to root_path, :notice => "NIIIIIIZE"
  end

  def destroy
  	Want.find(params[:id]).destroy
  	redirect_to root_path, :notice => "Your want has been DESTROYED"
  end	
end
