class SessionsController < ApplicationController


	def create
		user = User.authenticate(params[:session][:email],
		params[:session][:password])
		
		if user.nil?
			flash.now[:error] = "Invalid email/password combination."
			@title = "Sign in"
			redirect_to user
			#render 'new'
		else
			sign_in user
			redirect_to landing_path
		end
	end


 	def new
  	end


  	def destroy
	sign_out
	redirect_to root_path
	end
end
