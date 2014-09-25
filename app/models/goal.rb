class Goal < ActiveRecord::Base

	belongs_to :user
	validates :name, :target_date, :presence => true	
end
