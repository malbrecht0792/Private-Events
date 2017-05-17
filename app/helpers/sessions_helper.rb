module SessionsHelper

	# Returns true if the user is logged in, false otherwise.
  	def logged_in?
    	!session[:name].nil?
  	end

  	def current_user
  		@current_user = User.find(session[:id])
  	end

end
