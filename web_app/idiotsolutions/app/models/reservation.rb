class Reservation < ActiveRecord::Base
  belongs_to :employee
  belongs_to :meeting_room
end
