class UserActivity < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :answer
	
	attr_accessible :all

	after_save :update_karma 
	



	private 
	def update_karma 

		user =  self.user

		user.karma = 0.to_s if not user.karma

		if self.vote == 1
			user.karma  = (user.karma.to_i + 1).to_s
		else 
			user.karma  = (user.karma.to_i - 1).to_s
		end

		user.save
	end		

end
