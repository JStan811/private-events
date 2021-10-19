class EventAttendeesController < ApplicationController
  def create
    @event_attendee = EventAttendee.new(event_id: params["event_id"], attendee_id: params["attendee_id"])

    @event_attendee.save

    redirect_to event_path(params["event_id"])
  end
end
