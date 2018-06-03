class UsersController < ApplicationController
  before_action :set_user, except: :index

  def index
  end

  def edit
  end

  def update
    if @user.update(user_params)
     redirect_to admin_users_path
   else
     render :new
   end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
