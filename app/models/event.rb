class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendees
  has_many :attendees, through: :event_attendees
  scope :past, -> { where('date <= ?', Time.now) }
  scope :future, -> { where('date > ?', Time.now) }
end
