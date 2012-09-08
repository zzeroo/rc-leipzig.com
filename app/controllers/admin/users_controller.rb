class Admin::UsersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  helper_method :sort_column, :sort_direction

  def index
    @users = User.order(sort_column + ' ' + sort_direction)
  end

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

  private
  
  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "last_sign_in_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
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
