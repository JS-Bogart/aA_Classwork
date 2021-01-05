class SessionsController < ApplicationController

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
        logout
        redirect_to new_session_url
    end

end
