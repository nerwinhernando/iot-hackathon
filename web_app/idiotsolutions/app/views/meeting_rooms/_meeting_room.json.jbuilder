json.extract! meeting_room, :id, :reservation_date, :room, :area, :time_start, :time_end, :purpose, :equipment, :no_of_participants, :no_of_participants, :capacity, :employee_id, :created_at, :updated_at
json.url meeting_room_url(meeting_room, format: :json)