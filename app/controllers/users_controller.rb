class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Account is successfully created. Please login to continue."
      redirect_to root_url
    else
      flash[:warning] = "Please enter correct details!"
      render 'new'
    end
  end

  private 

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :last_name, :first_name, :contact_number, :is_seller, :is_buyer, picture_attributes: [:image])
  end
end
