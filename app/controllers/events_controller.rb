class EventsController < ApplicationController
  
  def new
  	@event = Event.new
  end

  def create
  	@event = current_user.events.build(event_params)
  	if @event.save
  		redirect_to event_path(@event.id)
  	else
  		render new
  	end
  end

  def show
  	@event = Event.find(params[:id])
  end

  def index
  	@upcoming_events = Event.upcoming
    @previous_events = Event.previous
  end

  private

  	def event_params
  		params.require(:event).permit(:description, :datetime)
  	end

end
