class UserController < ApplicationController
  def index
  	@dailies = Daily.where(:user_id => current_user.id)
  	@daily = Daily.new
  	@goals = Goal.where(:user_id => current_user.id)
  	@goal = Goal.new
  	@want = Want.new
  	@wants = Want.where(:user_id => current_user.id)
  end
end
