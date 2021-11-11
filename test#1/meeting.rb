
class Meeting
  attr_reader :name, :description, :prep_time, :rating

  def initialize(attributes = {})
    @sandra_slot_id = attributes[:sandra_slot_id]
    @andy_slot_id = attributes[:andy_slot_id]
    @start = attributes[:start]
    @end = attributes[:end]
  end

  # def done?
  #   @done
  # end

  # def mark_as_done!
  #   @done = true
  # end
end
