class EventsListsController < ApplicationController

    def new
        @el = EventsList.new
        @events = Event.all
        @users = User.all
        @event = Event.find(session[:event])
    end

    def create
        el_new = EventsList.new(user_id: session[:id], event_id: session[:event])
        if !el_new.valid?
            flash[:errors] = "You are already RSVP'd for this event"
            redirect_to event_path(session[:event])
        else
            el_new.save
            redirect_to user_path(session[:id])
        end
    end

    private

    def el_params
        params.require(:events_list).permit(:user_id, :event_id)
    end

end



