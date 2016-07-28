#rake db:seed:reservations_seeds

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
#+--------------------+--------------+------+-----+---------+----------------+

# Reservations for Meeting Room 1
sd = Date.parse('2016-08-01')
ed = Date.parse('2010-08-31')

Reservation.create!(reservation_date: '2016-08-06', meeting_room_id: 1,
	time_start: '08:00:00', time_end: '08:59:59', purpose: 'Retrospective',
	no_of_participants: 5, employee_id: 1)

Reservation.create!(reservation_date: '2016-08-06', meeting_room_id: 2,
	time_start: '11:00:00', time_end: '11:59:59', purpose: 'Planning',
	no_of_participants: 3, employee_id: 2)

Reservation.create!(reservation_date: '2016-08-05', meeting_room_id: 3,
	time_start: '12:00:00', time_end: '12:59:59', purpose: 'Grooming',
	no_of_participants: 5, employee_id: 3)

Reservation.create!(reservation_date: '2016-08-05', meeting_room_id: 4,
	time_start: '12:00:00', time_end: '12:59:59', purpose: '1 on 1',
	no_of_participants: 2, employee_id: 4)

Reservation.create!(reservation_date: '2016-08-04', meeting_room_id: 5,
	time_start: '12:00:00', time_end: '12:59:59', purpose: 'Knowledge Transfer',
	no_of_participants: 2, employee_id: 5)

Reservation.create!(reservation_date: '2016-08-04', meeting_room_id: 6,
	time_start: '14:00:00', time_end: '14:59:59', purpose: 'Townhall',
	no_of_participants: 2, employee_id: 1)

Reservation.create!(reservation_date: '2016-08-04', meeting_room_id: 7,
	time_start: '15:00:00', time_end: '15:59:59', purpose: 'Deep Dive',
	no_of_participants: 12, employee_id: 2)

Reservation.create!(reservation_date: '2016-08-02', meeting_room_id: 8,
	time_start: '15:00:00', time_end: '15:59:59', purpose: 'Roll in of new members',
	no_of_participants: 12, employee_id: 3)

Reservation.create!(reservation_date: '2016-08-06', meeting_room_id: 9,
	time_start: '16:00:00', time_end: '16:59:59', purpose: 'IOT Hackathon',
	no_of_participants: 12, employee_id: 4)

Reservation.create!(reservation_date: '2016-08-01', meeting_room_id: 1,
	time_start: '09:00:00', time_end: '09:59:59', purpose: 'Code Retreat',
	no_of_participants: 55, employee_id: 5)

Reservation.create!(reservation_date: '2016-08-01', meeting_room_id: 2,
	time_start: '10:30:00', time_end: '11:29:59', purpose: 'Managers meeting',
	no_of_participants: 20, employee_id: 5)
