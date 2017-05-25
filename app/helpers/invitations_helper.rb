module InvitationsHelper

	#Returns true if the current user is attending an event, and false otherwise
	def attending?(user, event)
		#Get count of rows of current_user and event_id in invitations table
		return true if Invitation.where("attendee_id = ? AND event_id = ?", 
										user.id, event.id).count > 0
	end

end
