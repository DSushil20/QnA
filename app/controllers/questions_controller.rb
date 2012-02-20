class QuestionsController < ApplicationController
	
	def create  	
  	   @question = Question.new(params[:question])

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
   	
    @question=Question.find(params[:id])

    #@answer=Answer   

     
   end

   def show
   end



end
