class UsersController < ApplicationController

  def new

  end

  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.save
      flash[:success] = "Account Created! Welcome #{user.name}!"
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:danger] = "Invalid item, please try again!"
      redirect_to '/signup'
    end
  end

end
