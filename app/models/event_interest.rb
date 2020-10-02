class EventInterest < ApplicationRecord
    belongs_to :event
    belongs_to :interest
    validates_uniqueness_of :interest_id, scope: :event_id
end
