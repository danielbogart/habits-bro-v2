class UserController < ApplicationController
  def index
  	@dailies = Daily.all
  end
end
