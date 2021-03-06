class Api::UsersController < ApplicationController
    before_action :redirect_if_logged_in

    def create
        @user = User.new(user_params)
        if @user.save
            login(@user)
            redirect_to root_url
        else
            render json: @user.errors.full_messages, status: 401
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
