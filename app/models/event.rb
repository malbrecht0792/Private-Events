class Event < ApplicationRecord
	belongs_to :host, class_name: "User"
	has_many :invitations, foreign_key: "event_id"
	has_many :attendees, through: :invitations, 
						 source: :attendee, 
						 class_name: "User" 
	validates :description, presence: true

	scope :upcoming, -> { where("datetime >= ?", Time.now).order('datetime ASC')}
	scope :previous, -> { where("datetime < ?", Time.now).order('datetime DESC')}
end
