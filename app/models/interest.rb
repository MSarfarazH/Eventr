class Interest < ApplicationRecord
    has_many :user_interest
    has_many :event_interest 


    def all_user_int_obj
        user_interests = self.user_interest
    end


    def event_int
        event_i = self.event_interest
    end
    
end
