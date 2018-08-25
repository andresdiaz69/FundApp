class EventUser < ApplicationRecord
  belongs_to :event_foundation
  belongs_to :user
end
