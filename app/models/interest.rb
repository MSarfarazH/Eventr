class Interest < ApplicationRecord
    has_many :user_interest
    has_many :event_interest 
end
