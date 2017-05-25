class User < ApplicationRecord
	has_many :events, foreign_key: "host_id",
					  dependent: :destroy
	has_many :invitations, foreign_key: "attendee_id"
	has_many :attended_events, through: :invitations, 
							   source: :event, 
							   class_name: "Event"
	validates :name, presence: true

	def upcoming_events
		self.attended_events.upcoming
	end

	def previous_events
		self.attended_events.previous
	end
end
