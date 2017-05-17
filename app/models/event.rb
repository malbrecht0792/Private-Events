class Event < ApplicationRecord
	belongs_to :host, class_name: "User"
	validates :host_id, presence: true
end
