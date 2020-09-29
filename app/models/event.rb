class Event < ApplicationRecord
    has_many :events_lists
    has_many :users, through: :events_lists

    validates(:title, :time, :details, {presence: true})
    validates :title, uniqueness: true
    validates :details, length: { in: 1..300}

      def time_format
        t = self.time
        t.strftime("%A, %B %d, %Y at %I:%M %p")
      end

end
