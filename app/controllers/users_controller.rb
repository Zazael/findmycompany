class UsersController < ApplicationController
  before_action :require_user, only: [:edit]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])

    if @user.update_attributes(:password_digest => BCrypt::Password.create(user_ud_params[:password_digest])) &&
        user_ud_params[:password_digest]!= user_ud_params[:password]
      flash[:success] = "password has been updated"
    elsif user_ud_params[:password_digest]!= user_ud_params[:password]
      render 'edit'
      flash[:error] = "passwords do not match"
    else
      render 'edit'
      flash[:error] = "something went  wrong"
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
  def user_ud_params
    params.require(:user).permit(:password_digest)
  end

end
