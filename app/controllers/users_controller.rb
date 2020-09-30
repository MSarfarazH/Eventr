class UsersController < ApplicationController
    before_action :authenticated?, only: [:index, :show]

    def index
        @users = User.all.sort_by{|user|user.username}
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        new_user = User.new(user_params)
        if !new_user.valid?
            flash[:errors]= new_user.errors.full_messages
            redirect_to new_user_path
        else
            new_user.save
            redirect_to sign_in_path
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        if !@user.valid?
            flash[:errors]= @user.errors.full_messages
            redirect_to edit_user_path
        else @user.save
            redirect_to user_path(@user)
        end
    end

    def welcome
        @events = Event.all
    end


    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :age, :bio, :username, :password)
    end

    def authenticated?
        if session[:id] != nil
            @user = User.find(session[:id])
        else
            redirect_to '/sign_in'
        end
    end

end