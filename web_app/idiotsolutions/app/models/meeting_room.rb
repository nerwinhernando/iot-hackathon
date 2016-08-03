class MeetingRoom < ActiveRecord::Base
  belongs_to :employee
  belongs_to :equipment
end
