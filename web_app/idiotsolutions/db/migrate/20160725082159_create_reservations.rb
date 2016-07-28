class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :reservation_date
      t.time :time_start
      t.time :time_end
      t.string :purpose
      t.integer :no_of_participants
      t.references :employee, index: true, foreign_key: true
      t.references :meeting_room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
