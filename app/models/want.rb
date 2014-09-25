class Want < ActiveRecord::Base

	belongs_to :user
	validates :name, :purchase_condition, :presence => true	
end
