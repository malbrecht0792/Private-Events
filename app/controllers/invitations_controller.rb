class InvitationsController < ApplicationController
  
  def create
  	event = Event.find(params[:invitation][:event_id])
  	invitation = current_user.invitations.build(invitation_params)
  	invitation.save
  	puts invitation.errors.full_messages
  	redirect_to event
  end

  def destroy
  	event = Event.find(params[:invitation][:event_id])
  	invitation = current_user.invitations.find_by(event_id: event.id, attendee_id: params[:invitation][:attendee_id])
  	invitation.destroy
  	redirect_to event
  end

  private

  	def invitation_params
  		params.require(:invitation).permit(:host_id, :attendee_id, :event_id)
  	end

end
