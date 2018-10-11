class UsersController < ApplicationController

  def show
    @user = User.find(1)
  end
  def create
  	# @user = User.new(user_params)
  	@user = User.new(name: "FooBarads", email: "foo@gmail.com",
                 password: "admin1ad1", password_confirmation: "admin1ad1")
  	if @user.save
  		#hanle success case
  	else
  		render 'new'
  	end
  end
  def new
  	@user = User.new
  end
  private
  	def user_params
  		params.require(:user).permit(:name,:email,:password,:password_confirmation)
  	end
end
