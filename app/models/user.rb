class User < ActiveRecord::Base

	has_many :answers
	has_many :question 
	has_many :user_activities
	
	def login
		
	end

	def logout
		
	end

	def ask_question
		
	end

 	def post_answer
 		
 	end

end
