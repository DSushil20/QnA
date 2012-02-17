class UsersController < ApplicationController
  def create
  	
  	   @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to landing_path  }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

end
