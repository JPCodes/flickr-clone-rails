class UsersController < ApplicationController
  def upload_avatar
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(avatar_params)
    if @user.save
      redirect_to root_path
    else
      render :upload_avatar
    end
  end

  private
  def avatar_params
  params.require(:user).permit(:avatar)
  end
end
