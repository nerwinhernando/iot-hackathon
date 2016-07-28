class AddFloorColumnToMeetingRooms < ActiveRecord::Migration
  def change
  	add_column :meeting_rooms, :floor, :integer
  end
end
