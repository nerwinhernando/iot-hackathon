#rake db:seed:analytics_data_seeds

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

sd = Date.parse('2010-03-01')
ed = Date.parse('2010-03-15')

sd.upto(ed) { |date| 
	puts date
	Reservation.create!(reservation_date: date, meeting_room_id: 2,
	time_start: '11:00:00', time_end: '11:59:59', purpose: 'Daily Meeting',
	no_of_participants: 5, employee_id: 4) 
}

sd.upto(ed) { |date| 
	puts date
	Reservation.create!(reservation_date: date, meeting_room_id: 1,
	time_start: '09:00:00', time_end: '09:59:59', purpose: 'Planning',
	no_of_participants: 5, employee_id: 2) 
}