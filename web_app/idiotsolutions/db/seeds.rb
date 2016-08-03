# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dummy_reservation = Reservation.where(reservation_date: nil)
meeting_rooms = MeetingRoom.all

dummy_reservation.each do |d|
	d.destroy
end

meeting_rooms.each do |mr|
	Reservation.create!(meeting_room_id: mr.id, time_start: Time.new(2016,8,3,9,0,0).to_s(:time), time_end: Time.new(2016,8,3,10,0,0).to_s(:time), purpose: 'Not Reserved', employee_id: 1, status: 0)
end