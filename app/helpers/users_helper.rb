module UsersHelper

	def upcoming_events
		Event.where("datetime > ?", Time.now)
	end

	def previous_events
		Event.where("datetime < ?", Time.now)
	end

end
