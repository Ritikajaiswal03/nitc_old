class SessionsController < ApplicationController
	
	def create
  		user = User.find_by(email: params[:session][:email])
  		if user.present? && user.authenticate(params[:session][:password])
    		session[:user_id] = user.id
    		format.html{redirect_to root_path, notice: "Logged in successfully"}
  		else
    		# notice: "Invalid email or password"
    		# format.html{redirect_to root_path, notice: "Invalid Email"}
    		render :new 
  		end
	end
 
	def destroy
  		session[:user_id] = nil
  		redirect_to root_path ,notice: "Logged Out"
	end
end
