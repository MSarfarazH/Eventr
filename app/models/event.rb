class Event < ApplicationRecord
    has_many :events_lists
    has_many :users, through: :events_list
end
