class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]

  helper_method :sort_column, :sort_direction

  def index
    @users = User.find(:all)
  end

  def update_password
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # Sign in the user by passing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end
end