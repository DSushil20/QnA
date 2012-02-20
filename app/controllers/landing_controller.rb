class LandingController < ApplicationController

def start
	  @user = User.new
	  @user.id=params[:id]
 	  @question = Question.new
      respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
	  end
end

end
