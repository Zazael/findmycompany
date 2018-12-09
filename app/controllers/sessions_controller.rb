class SessionsController < ApplicationController
  def new
  end

  # TODO : figure why you got the can't render twice error   ?  isn't redirect equivalent to return ?
  def create
    if !params[:session].nil? && !params[:session][:email].nil? && !params[:session][:password].nil?
      @user = User.find_by_email(params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to '/'
      else
        redirect_to login_path
        flash[:error] = "wrong login or password"
      end
    else
      redirect_to login_path
      flash[:error] = "wrong login or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
