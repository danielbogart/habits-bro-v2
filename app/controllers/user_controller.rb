class UserController < ApplicationController
  def index
  	@dailies = Daily.where(:user_id => current_user.id)
  	@daily = Daily.new
  end
end
