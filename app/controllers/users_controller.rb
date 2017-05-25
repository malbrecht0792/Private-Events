class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      session[:name] = @user.name
      session[:id] = @user.id
  		redirect_to user_path(@user.id)
  	else
  		render new
  	end
  end

  def show
  	@user = User.find(params[:id])
    @upcoming_events = current_user.upcoming_events
    @previous_events = current_user.previous_events
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end

end