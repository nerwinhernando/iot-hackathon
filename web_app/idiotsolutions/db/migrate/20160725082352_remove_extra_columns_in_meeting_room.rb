class RemoveExtraColumnsInMeetingRoom < ActiveRecord::Migration
  def change
    remove_column :meeting_rooms, :reservation_date
    remove_column :meeting_rooms, :time_start
    remove_column :meeting_rooms, :time_end
    remove_column :meeting_rooms, :purpose
    remove_column :meeting_rooms, :no_of_participants
  end
end
