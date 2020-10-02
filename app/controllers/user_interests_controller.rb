class UserInterestsController < ApplicationController

    def new
        @user_interest = UserInterest.new
        @interests = Interest.all
        @users = User.all
    end

    def create
        new_user_interest = UserInterest.new(user_id: session[:id], interest_id: params[:interest_id])
        if !new_user_interest.valid?
            flash[:err] = "Interest already assigned"
            redirect_to user_path(session[:id])
        else 
            new_user_interest.save
        redirect_to user_path(session[:id])
        end
    end

    def index
    end

    def show
        
    end


end
