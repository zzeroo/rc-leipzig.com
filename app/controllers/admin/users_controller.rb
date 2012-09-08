class Admin::UsersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  helper_method :sort_column, :sort_direction

  def new
  end
  
  def edit
  end

  def create
  end

  def update
    if @user.update_attributes(params[:user])
      @current_ability = nil
      @current_user = nil
      # ...
    end
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
