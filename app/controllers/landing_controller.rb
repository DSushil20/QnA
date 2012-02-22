class LandingController < ApplicationController

	def start
	  
	  		flash[:notice]="Hey, How are you??"
	  		puts 'print='
	  		puts ((11.to_s * 2).to_i/2)
			@recent_questions_array= recent_questions()
	  		@user = User.new
	  		@user.id=params[:id]
 	  	 	@question = Question.new
            respond_to do |format|
     		  format.html # new.html.erb
      		  format.xml  { render :xml => @user }
		    end
	  
	end

	def recent_questions #methos to find recent question 
		@user_id=24

        array=Question.limit('10').order('updated_at desc')
        
	end


end
