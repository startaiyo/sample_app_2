class SessionsController < ApplicationController
  def new
  end

  def create
    user=User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      user_id=session[:user_id]
      redirect_to "/?=#{user_id}"
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to "/"
  end
end
