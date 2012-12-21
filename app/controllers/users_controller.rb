class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end
  def new
  	@user = User.new
  	if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
