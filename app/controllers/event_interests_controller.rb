class EventInterestsController < ApplicationController

    def new
        @event_interest = EventInterest.new
        @interests = Interest.all
        @events = Event.all
    end

    def create
        new_event_interest = EventInterest.create(event_id: params[:event_id], interest_id: params[:interest_id])
        redirect_to events_path
    end

end
