require 'date'

class CompareCalendarsService
    def initialize(first_busy_slots, second_busy_slots)
        @first_busy_slots = first_busy_slots
        @second_busy_slots = second_busy_slots
        @year = DateTime.parse(@first_busy_slots.first['start']).year
        @month = DateTime.parse(@first_busy_slots.first['start']).month
        @day = DateTime.parse(@first_busy_slots.first['start']).day
    end

    def find_available_slot
        # [...]
        # hour_slot = (8..18).to_a.map {|hour| DateTime.new(2022,8,1,hour) }
        # day_slot = (8..18).to_a.map {|day| DateTime.new(2022,8,day,8) }
        all_slots = (@day..(@day + 5)).map { |day| (9...18).to_a.map {|hour| DateTime.new(@year,@month,day,hour) } }.flatten
        filter_slot = all_slots
        @first_busy_slots.map do |slot|
          start = DateTime.parse(slot["start"])
          endtime = DateTime.parse(slot["end"])
          filter_slot = filter_slot.reject { |slot| slot >= start && slot < endtime }
        end
        @second_busy_slots.map do |slot|
          start = DateTime.parse(slot["start"])
          endtime = DateTime.parse(slot["end"])
          filter_slot = filter_slot.reject { |slot| slot >= start && slot < endtime }
        end

        filter_slot.map do |slot|
          {
            "start" => slot.to_s,
            "end" => DateTime.new(slot.year, slot.month, slot.day, slot.hour + 1).to_s
          }
        end
    end
end
