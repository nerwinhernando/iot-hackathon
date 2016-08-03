#rake db:seed:meeting_rooms_seeds

MeetingRoom.delete_all

#+------------+--------------+------+-----+---------+----------------+
#| Field      | Type         | Null | Key | Default | Extra          |
#+------------+--------------+------+-----+---------+----------------+
#| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
#| room       | varchar(255) | YES  |     | NULL    |                |
#| area       | varchar(255) | YES  |     | NULL    |                |
#| equipment  | varchar(255) | YES  |     | NULL    |                |
#| capacity   | int(11)      | YES  |     | NULL    |                |
#| created_at | datetime     | NO   |     | NULL    |                |
#| updated_at | datetime     | NO   |     | NULL    |                |
#+------------+--------------+------+-----+---------+----------------+
# Building I, UP Ayalaland Technohub Building
MeetingRoom.create!(room: 'Floor 2nd Big Pantry', floor: 2, area: 'UP AyalaLand Technohub, Building I', capacity: 20, equipment_id: 4)
MeetingRoom.create!(room: 'Kotka', floor: 2, area: 'UP AyalaLand Technohub, Building I', capacity: 5, equipment_id: 1)
MeetingRoom.create!(room: 'Oulu', floor: 2, area: 'UP AyalaLand Technohub, Building I', capacity: 8, equipment_id: 1)
MeetingRoom.create!(room: 'Rovaniemi', floor: 2, area: 'UP AyalaLand Technohub, Building I', capacity: 8, equipment_id: 1)
MeetingRoom.create!(room: 'Tampere', floor: 2, area: 'UP AyalaLand Technohub, Building I', capacity: 10, equipment_id: 1)
MeetingRoom.create!(room: 'Turku', floor: 2, area: 'UP AyalaLand Technohub, Building I', capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Vaasa', floor: 2, area: 'UP AyalaLand Technohub, Building I', capacity: 5, equipment_id: 1)
MeetingRoom.create!(room: 'Beijing', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 3, equipment_id: 1)
MeetingRoom.create!(room: 'Bullet Train 1', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 8, equipment_id: 1)
MeetingRoom.create!(room: 'Bullet Train 2', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 2)
MeetingRoom.create!(room: 'Bullet Train 3', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 2)
MeetingRoom.create!(room: 'Bullet Train 4', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 2)
MeetingRoom.create!(room: 'Bullet Train 5', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 2)
MeetingRoom.create!(room: 'Bullet Train 6', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 8, equipment_id: 1)
MeetingRoom.create!(room: 'Chengdu', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 8)
MeetingRoom.create!(room: 'Daejon', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 8)
MeetingRoom.create!(room: 'Floor 3rd Big Pantry', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 20, equipment_id: 4)
MeetingRoom.create!(room: 'Gwangju', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 8)
MeetingRoom.create!(room: 'Hong Kong', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 8)
MeetingRoom.create!(room: 'Incheon', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 8)
MeetingRoom.create!(room: 'Jeju', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 8)
MeetingRoom.create!(room: 'Kyoto', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 10, equipment_id: 1)
MeetingRoom.create!(room: 'Macau', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 3, equipment_id: 8)
MeetingRoom.create!(room: 'Nagoya', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Osaka', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Seoul', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Shanghai', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 4, equipment_id: 1)
MeetingRoom.create!(room: 'Taipei', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 3, equipment_id: 8)
MeetingRoom.create!(room: 'Tokyo', floor: 3, area: 'UP AyalaLand Technohub, Building I', capacity: 20, equipment_id: 1)
MeetingRoom.create!(room: 'Boracay Pantry', floor: 1, area: 'UP AyalaLand Technohub, Building I', capacity: 20, equipment_id: 4)
MeetingRoom.create!(room: 'Luzon', floor: 1, area: 'UP AyalaLand Technohub, Building I', capacity: 10, equipment_id: 1)
MeetingRoom.create!(room: 'Visayas', floor: 1, area: 'UP AyalaLand Technohub, Building I', capacity: 10, equipment_id: 1)
MeetingRoom.create!(room: 'Mindanao', floor: 1, area: 'UP AyalaLand Technohub, Building I', capacity: 10, equipment_id: 1)
MeetingRoom.create!(room: 'Pilipinas', floor: 1, area: 'UP AyalaLand Technohub, Building I', capacity: 20, equipment_id: 1)

# Building O, UP Ayalaland Technohub Building
MeetingRoom.create!(room: 'Gniezno', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Hala Stulecia', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Krakow', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 10, equipment_id: 1)
MeetingRoom.create!(room: 'Pacanow', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Pergola', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 8, equipment_id: 1)
MeetingRoom.create!(room: 'Suwalki', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Warszawa', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 10, equipment_id: 1)
MeetingRoom.create!(room: 'Wroclaw', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 20, equipment_id: 1)
MeetingRoom.create!(room: 'Zakopane', floor: 1, area: 'UP AyalaLand Technohub, Building O', capacity: 8, equipment_id: 1)

# Sunlife
MeetingRoom.create!(room: 'Aguinaldo', floor: 14, area: 'Sunlife', capacity: 12, equipment_id: 1)
MeetingRoom.create!(room: 'Bonifacio', floor: 14, area: 'Sunlife', capacity: 12, equipment_id: 1)
MeetingRoom.create!(room: 'Del Pilar', floor: 14, area: 'Sunlife',  capacity: 3, equipment_id: 1)
MeetingRoom.create!(room: 'Delos Santos', floor: 14, area: 'Sunlife', capacity: 4, equipment_id: 1)
MeetingRoom.create!(room: 'Felipe', floor: 14, area: 'Sunlife',  capacity: 2, equipment_id: 1)
MeetingRoom.create!(room: 'Gomburza', floor: 14, area: 'Sunlife',  capacity: 8, equipment_id: 1)
MeetingRoom.create!(room: 'Jacinto', floor: 14, area: 'Sunlife',  capacity: 8, equipment_id: 1)
MeetingRoom.create!(room: 'Lopez Jaena', floor: 14, area: 'Sunlife',  capacity: 2, equipment_id: 1)
MeetingRoom.create!(room: 'Luna', floor: 14, area: 'Sunlife',  capacity: 3, equipment_id: 1)
MeetingRoom.create!(room: 'Mabini', floor: 14, area: 'Sunlife',  capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Ma. Guerrero', floor: 14, area: 'Sunlife',  capacity: 2, equipment_id: 1)
MeetingRoom.create!(room: 'Palma', floor: 14, area: 'Sunlife',  capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Paterno', floor: 14, area: 'Sunlife',  capacity: 2, equipment_id: 1)
MeetingRoom.create!(room: 'Ponce', floor: 14, area: 'Sunlife',  capacity: 6, equipment_id: 1)
MeetingRoom.create!(room: 'Silang', floor: 14, area: 'Sunlife',  capacity: 8, equipment_id: 1)
MeetingRoom.create!(room: 'Tecson', floor: 14, area: 'Sunlife',  capacity: 15, equipment_id: 1)
