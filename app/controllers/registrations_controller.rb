class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # raise Exception.new(params[:user])
    @user = User.new(params_user)
    if @user.save
      redirect_to root_url, flash: {debug: "collect!->" + params[:user].to_s}
    else
      render :new, flash: {debug: "false"}
    end
  end

  def params_user
    params.require(:user).permit(:name, :email, :screen_name, :bio, :password, :password_confirmation)
  end
end
