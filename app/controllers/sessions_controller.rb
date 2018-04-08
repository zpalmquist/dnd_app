class SessionsController < ApplicationController
  def create
    binding.pry
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    sesson.clear
    redirect_to root_path
  end
end
