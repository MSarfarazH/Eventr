class FriendsList < ApplicationRecord
    belongs_to :user

    validates_uniqueness_of :user_id, scope: :user_id_2

end
