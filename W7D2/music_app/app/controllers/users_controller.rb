class UsersController < ApplicationController

    def new
        @user = User.new
        render :new
    end

    def index
        @users = User.all 
        render :index
    end

    def show
        @user = User.find_by(id: params[:id])
        render :show
    end

end
