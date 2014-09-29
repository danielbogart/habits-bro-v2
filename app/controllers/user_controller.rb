class UserController < ApplicationController
  def index
  	@dailies = current_user.dailies
  	@daily = Daily.new
  	@goals = current_user.goals
  	@goal = Goal.new
  	@wants = current_user.wants
  	@want = Want.new

  	current_user.dailies.each do |d|
  		if d.updated_at < 24.hours.ago
  			d.update_attributes(:streak => 0)
        flash[:error] = "Streak ended"
  		end
  	end
  end
end
