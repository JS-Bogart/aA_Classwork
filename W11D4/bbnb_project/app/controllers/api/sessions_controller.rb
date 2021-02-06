class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user.nil?
      render json: ['Incorrect login'], status: 401
    else
      login!(@user)
      render 'api/users/show'
    end
  end

  def destroy
    if current_user
      logout!
      render {}
    else
      render json ['Not currently logged in'], status: 404
    end
  end
  
end
