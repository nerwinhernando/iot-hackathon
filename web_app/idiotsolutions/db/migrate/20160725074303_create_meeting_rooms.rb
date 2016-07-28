class CreateMeetingRooms < ActiveRecord::Migration
  def change
    create_table :meeting_rooms do |t|
      t.date :reservation_date
      t.string :room
      t.string :area
      t.time :time_start
      t.time :time_end
      t.string :purpose
      t.string :equipment
      t.integer :no_of_participants
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
