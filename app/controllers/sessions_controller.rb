class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #login  the user
      log_in user
      flash[:success] = "You have logged in successfully."
      redirect_to root_path
    else
      flash.now[:danger] = 'This email/password combination is not correct. Please make changes.'
      render 'new'
    end

  end


  def destroy
    log_out
    flash[:success] = "You have logged out successfully."
    redirect_to root_url
  end
end
