class UsersController < ApplicationController
  def index
  	@users = [User.last]
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :index
    else
    	render @user
    end
  end

  def edit
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:login)
  end
end
