class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # raise Exception.new(params[:user])
    redirect_to new_registration_path
  end
end
