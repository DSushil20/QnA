class UserActivity < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :answer
	
	attr_accessible :all
	
end
