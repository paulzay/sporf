class UsersController < ApplicationController
  before_action :logged_in_user, only: [:show]

  def index; end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = 'Account created!'
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update; end

  def destroy; end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
