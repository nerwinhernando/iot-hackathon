class Reservation < ActiveRecord::Base
  belongs_to :employee
  belongs_to :meeting_room
  enum status: [:available, :occupied, :unused]

  def self.total_on(id)
  	where(meeting_room_id: id).count
  end
end
