class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present?
      session[:user_name] = params[:name]
      redirect_to appearance_path
    else
      redirect_to signin_path
    end
  end
end
