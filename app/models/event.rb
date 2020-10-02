class Event < ApplicationRecord
    has_many :events_lists, dependent: :destroy
    has_many :users, through: :events_lists
    has_many :event_interests, dependent: :destroy
    has_many :interests, through: :event_interests

    validates(:title, :time, :details, {presence: true})
    validates :title, uniqueness: {scope: :time}
    validates :details, length: { in: 1..300}

      def time_format
        t = self.time
        t.strftime("%A, %B %d, %Y at %I:%M %p")
      end

      def time_format_2
        t = self.time
        t.strftime("%A, %B %d, %Y")
      end

       def self.past_events
         e = self.all.select {|event| event.time.past? == true}
         e.sort_by{|event|event.time}
       end

       def self.future_events
         e = self.all.select {|event| event.time.future? == true}
         e.sort_by{|event|event.time}
       end

  
end
