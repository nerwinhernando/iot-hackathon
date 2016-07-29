class AddStatusColumnToMeetingRooms < ActiveRecord::Migration
  def change
  	add_column :meeting_rooms, :status, :integer
  end
end
