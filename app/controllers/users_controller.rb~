class UsersController < ApplicationController
  def new
@user = User.new
  end
def create
@user = User.new(user_params)
if @user.save
 redirect_to root_url, :notice => " Now u r eligible to sign in and do reservation"
else 
render "new"
end
end
def user_params
  		params.require(:user).permit(:username,:password,:salt,:encrypted_password)
  	end
end
