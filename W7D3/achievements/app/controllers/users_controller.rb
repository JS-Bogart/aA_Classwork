class UsersController < ApplicationController

    def index
        @users = User.all
        render :index
    end

    def show
        @user = User.find_by(id: params[:id])
        if !@user.nil?
            render :show
        else
            redirect_to users_url
        end
    end

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.create(username: 'Erik', password: '123456', session_token: '1231231adsdada')
        if @user.save
            render :show
        else
            render :new
        end
    end
end
