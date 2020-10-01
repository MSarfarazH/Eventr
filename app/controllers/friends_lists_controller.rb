class FriendsListsController < ApplicationController

    def new
        @friend_new = FriendsList.new
        @users = User.all
        @user = User.find(session[:user])
    end

    def create
        @friend_new = FriendsList.new(user_id: session[:id], user_id_2: session[:user])
        @friend_new2 = FriendsList.new(user_id: session[:user], user_id_2: session[:id])
        if !@friend_new.valid? && !@friend_new2.valid?
            flash[:errors] = "Can not add, you are already friends"
            redirect_to user_path(session[:user])
        else
            @friend_new.save
            @friend_new2.save
        redirect_to user_path(session[:id])
        end
    end

    def destroy
        @fl = FriendsList.find(user_id: sessions[:id], user_id_2: params[:user_id])
        @fl2 = FriendsList.find(user_id: params[:user_id], user_id_2: sessions[:id])
        @fl.destroy
        @fl2.destroy
    end


    private

    def fl_params
        params.require(:friends_list).permit(:user_id, :user_id_2)
    end
end
