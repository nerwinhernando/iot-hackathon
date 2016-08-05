#rake db:seed:reservation_draft_seeds

Reservation.delete_all

#+--------------------+--------------+------+-----+---------+----------------+
#| Field              | Type         | Null | Key | Default | Extra          |
#+--------------------+--------------+------+-----+---------+----------------+
#| id                 | int(11)      | NO   | PRI | NULL    | auto_increment |
#| reservation_date   | date         | YES  |     | NULL    |                |
#| time_start         | time         | YES  |     | NULL    |                |
#| time_end           | time         | YES  |     | NULL    |                |
#| purpose            | varchar(255) | YES  |     | NULL    |                |
#| no_of_participants | int(11)      | YES  |     | NULL    |                |
#| employee_id        | int(11)      | YES  | MUL | NULL    |                |
#| meeting_room_id    | int(11)      | YES  | MUL | NULL    |                |
#| created_at         | datetime     | NO   |     | NULL    |                |
#| updated_at         | datetime     | NO   |     | NULL    |                |
#| status             | int(11)      | YES  |     | 0       |                |
#+--------------------+--------------+------+-----+---------+----------------+

# Reservations January 2016 until December 2016
sd = Date.parse('2016-08-01')
ed = Date.parse('2016-09-15')


#purposes = ["Sprint Retrospective", "Managers Meeting", "Sprint Planning"]


purposes = ["Sprint Retrospective", "Managers Meeting", "Sprint Planning", "Sprint Grooming", 
	"Sprint Demo", "1 on 1", "IJM Interview", "Townhall", "Bootcamp", "Hackathon", "Induction Training",
	"Competency Training"]


Random.new_seed
# Scenario: 
#   For each day and 
#     For each meeting room, 
#       a) randomize the following first:
#          - employee_id (integer)
#          - status (integer)
#          - Purpose (array of strings)
#           
#   Limitations:
#     Time start, Time End

#@meeting_rooms = MeetingRoom.all
#@meeting_rooms.each do |mr|
#	Reservation.create!(meeting_room_id: mr.id, time_start: Time.now.to_s(:time), time_end: Time.now.to_s(:time), purpose: 'Not Reserved', employee_id: 1, status: 1)
#end

sd.upto(ed) { |date| 
	print "Generating reservation for date: ".concat(date.to_s).concat("\n")
	@meeting_rooms = MeetingRoom.all
    @meeting_rooms.each do |mr|
      print "Room: ".concat(mr.room).concat("\n")
      capacity = mr.capacity
      participants = Random.new.rand(1..capacity)
      fill_status = Random.new.rand(0..2)
      fill_employee_id = Random.new.rand(1..47)
      index = Random.new.rand(0..purposes.length)
      purpose = purposes[index]
      # Limitation: time start and time end
      to_generate = Random.new.rand(0..1)
      if to_generate == 1
      Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	    time_start: '8:00:00', time_end: '8:59:59', purpose: purpose,
	    no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '9:00:00', time_end: '9:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '10:00:00', time_end: '10:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '11:00:00', time_end: '11:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '13:00:00', time_end: '14:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '14:00:00', time_end: '14:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '15:00:00', time_end: '15:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '16:00:00', time_end: '16:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '17:00:00', time_end: '17:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end

      to_generate = Random.new.rand(0..1)
      if to_generate == 1
        Reservation.create!(reservation_date: date, meeting_room_id: mr.id,
	      time_start: '18:00:00', time_end: '18:59:59', purpose: purpose,
	      no_of_participants: participants, employee_id: fill_employee_id, status: fill_status) 
      end
    end
}
