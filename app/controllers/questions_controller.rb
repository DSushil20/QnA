class QuestionsController < ApplicationController
	
	def create  	
  	   @question = Question.new(params[:question])
       @question.user_id=24
       
        puts 'in question controller'

    	respond_to do |format|
     	 	if @question.save
        		format.html { redirect_to landing_path  }
        		format.xml  { render :xml => @question, :status => :created, :location => @question }
      		else
        		format.html { render :action => "new" }
        		format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      		end
    	end
  end



   def question

      @user_activity= {}
      @answer=Answer.new
      @question=Question.find(params[:id] )
      @answers=@question.answers.order( 'updated_at desc').limit(3).includes(:user_activities)   

       @answers.each do |a|
           @user_activity[a]= UserActivity.find_or_initialize_by_user_id_and_answer_id( current_user.id , a.id )
       end
      
   end

   def show

   end

end
