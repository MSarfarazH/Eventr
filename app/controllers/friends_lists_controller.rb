class FriendsListsController < ApplicationController

    def new
        @friend_new = FriendsList.new
        @users = User.all
    end

    def create
        @friend_new = FriendsList.new(fl_params)
        @friend_new2 = FriendsList.new(user_id: fl_params[:user_id_2], user_id_2: fl_params[:user_id])
        if !@friend_new.valid? && !@friend_new2.valid?
            flash[:errors] = "Can not add, you are already friends"
            redirect_to user_path(fl_params[:user_id])
        else
            @friend_new.save
            @friend_new2.save
        redirect_to user_path(fl_params[:user_id])
        end
    end


    private

    def fl_params
        params.require(:friends_list).permit(:user_id, :user_id_2)
    end
end
