class EventInterestsController < ApplicationController

    def new
        @event_interest = EventInterest.new
        @interests = Interest.all
        @events = Event.all
    end

    def create
        new_event_interest = EventInterest.new(event_id: session[:event], interest_id: params[:interest_id])
        if !new_event_interest.valid?
            flash[:err] = "Tag already assigned"
            redirect_to event_path(session[:event])
        else
            new_event_interest.save
            redirect_to event_path(session[:event])
        end
    end

end
