class UserController < ApplicationController
  def index
  	@dailies = current_user.dailies
  	@daily = Daily.new
  	@goals = current_user.goals
  	@goal = Goal.new
  	@wants = current_user.wants
  	@want = Want.new
  end
end
