class UserActivitiesController < ApplicationController
	
	def create
		@user_activity=UserActivity.new

			@user_activity.user_id=params[:user_activity][:user_id]
			@user_activity.answer_id=params[:user_activity][:answer_id]
        	if params[:commit] == 'UP'
        		@user_activity.vote = 1        	
       		else
       			@user_activity.vote = 2
       		end
        
            respond_to do |format|
       			  if @user_activity.save 
 			    		  format.html {redirect_to @user_activity.answer.question}
 					      format.xml {render :xml => @user_activity, :status => :created, :location => @user_activity}
   				    else
   					    format.html { render :action => "new" }
        			 format.xml  { render :xml => @user_activity.errors, :status => :unprocessable_entity }
       			  end	
       	    end
	end	


	def new
		@user_activity=UserActivity.new
	end

	def update

		@user_activity=UserActivity.find(params[:id])
      
        	if params[:commit] == 'UP'
        		@user_activity.vote = 1        	
       		else
       			@user_activity.vote = 2
       		end
        
            respond_to do |format|
       			  if @user_activity.save 
 					      format.html {redirect_to "/questions/#{Answer.find(params[:user_activity][:answer_id]).question_id}"}
 					      format.xml {render :xml => @user_activity, :status => :created, :location => @user_activity}
   				    else
   					    format.html { render :action => "new" }
        			  format.xml  { render :xml => @user_activity.errors, :status => :unprocessable_entity }
       			  end	
       	    end	
	end
end
