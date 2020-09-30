class Event < ApplicationRecord
    has_many :events_lists
    has_many :users, through: :events_lists

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
         self.all.select {|event| event.time.past? == true}
       end

       def self.future_events
         self.all.select {|event| event.time.future? == true}
       end

        # def self.happened_or_not
        #   past = []
        #   future = []
        #   self.all.each do |event|
        #     if event.time.past? == true
        #       past << event
        #     else
        #       future << event
        #     end
        #   end
        # end

end
