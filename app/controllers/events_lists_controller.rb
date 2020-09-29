class EventsListsController < ApplicationController

    def new
        @el = EventsList.new
        @events = Event.all
        @users = User.all
    end

    def create
        el_new = EventsList.create(el_params)
        redirect_to user_path(el_new.user_id)
    end

    private

    def el_params
        params.require(:events_list).permit(:user_id, :event_id)
    end

end
