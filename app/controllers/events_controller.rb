class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
        session[:event] = @event.id
    end

    def new
        @event = Event.new
    end

    def create
        new_event = Event.new(event_params)
        if !new_event.valid?
            flash[:errors]= new_event.errors.full_messages
            redirect_to new_event_path
        else
            new_event.save
            redirect_to event_path(new_event)
        end
    end


    private

    def event_params
        params.require(:event).permit(:title, :time, :details)
    end


end
