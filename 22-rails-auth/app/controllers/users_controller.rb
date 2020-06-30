class UsersController < ApplicationController

  skip_before_action :authenticated, only: [:new, :create]

  # skip_before_action :test => not going to work
  
  def new
    @user = User.new
  end

  def create
    # byebug
    @user = User.new(user_params)

    # byebug

    if  @user.valid?
      @user.save
      redirect_to @user
    else
      redirect_to "/signup"
    end

  end

  def show
    @user = User.find(session[:user_id])
  end

  private

 def user_params
  params.permit(:username, :password, :password_confirmation)
 end

#  def test
#  end

end
