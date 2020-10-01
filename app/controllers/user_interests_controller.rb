class UserInterestsController < ApplicationController

    def new
        @user_interest = UserInterest.new
        @interests = Interest.all
        @users = User.all
    end

    def create
        new_user_interest = UserInterest.create(user_id: session[:id], interest_id: params[:interest_id])
        redirect_to user_path(session[:id])
    end

    def index
    end

    def show
        
    end


end
