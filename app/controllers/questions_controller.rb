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
      @answer=Answer.new
      @question=Question.find(params[:id])
      @answers=Answer.where(params[:id])   
   end

   def show

   end



end
