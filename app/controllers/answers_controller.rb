class AnswersController < ApplicationController

	def create  	
  	   @answer = Answer.new(params[:answer])

    	respond_to do |format|
     	 	if @answer.save
        		format.html { #redirect_to landing_path 
        		 }
        		format.xml  { render :xml => @answer, :status => :created, :location => @answer }
      		else
        		format.html { render :action => "new" }
        		format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      		end
    	end
  	end


end
