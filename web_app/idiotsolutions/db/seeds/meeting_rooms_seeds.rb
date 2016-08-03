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
MeetingRoom.create!(room: 'Bullet Train 1', area: 'TechnoHub Bldg I', equipment: 'Bar Table', capacity: 8)
MeetingRoom.create!(room: 'Bullet Train 2', area: 'TechnoHub Bldg I', equipment: 'Boardcopier', capacity: 6)
MeetingRoom.create!(room: 'Bullet Train 3', area: 'TechnoHub Bldg I', equipment: 'Bar Table', capacity: 6)
MeetingRoom.create!(room: 'Bullet Train 4', area: 'TechnoHub Bldg I', equipment: 'Computer', capacity: 5)
MeetingRoom.create!(room: 'Bullet Train 5', area: 'TechnoHub Bldg I', equipment: 'Conference Phone', capacity: 9)
MeetingRoom.create!(room: 'Helsinki', area: 'TechnoHub Bldg I', equipment: 'Flip chart', capacity: 25)
MeetingRoom.create!(room: 'Tampere', area: 'TechnoHub Bldg I', equipment: 'Overhead Projector', capacity: 26)
MeetingRoom.create!(room: 'Wroclaw', area: 'TechnoHub Bldg O', equipment: 'PC Projector', capacity: 32)
MeetingRoom.create!(room: 'Big Pantry', area: 'TechnoHub Bldg O', equipment: 'Screen', capacity: 300)
MeetingRoom.create!(room: 'Boracay Pantry', area: 'TechnoHub Bldg I', equipment: 'TV', capacity: 200)
MeetingRoom.create!(room: 'Hong Kong', area: 'TechnoHub Bldg O', equipment: 'Whiteboard', capacity: 3)

# Building O, UP Ayalaland Technohub Building




# Sunlife