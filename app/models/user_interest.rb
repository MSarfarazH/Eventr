class UserInterest < ApplicationRecord
belongs_to :user
belongs_to :interest 

validates_uniqueness_of :interest_id, scope: :user_id
end
