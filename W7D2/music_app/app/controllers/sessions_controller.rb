class SessionsController < ApplicationController
    helper_method :current_user

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password]
        )

        @user.reset_session_token!
        redirect_to user_url(@user)
    end

    def destroy
        session = 
    end

end
