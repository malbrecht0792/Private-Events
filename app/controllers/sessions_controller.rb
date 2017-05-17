class SessionsController < ApplicationController
  
  def new
  end

  def create
  	user = User.find_by(name: params[:session][:name])
    if user
      session[:name] = user.name
      session[:id] = user.id
    end
  	redirect_to user_path(user)
  end

  private

  	def user_params
  		params.require(:user).permit(:name)
  	end

end
