#rake db:seed:equipments_seeds

Equipment.delete_all

#+------------+--------------+------+-----+---------+----------------+
#| Field      | Type         | Null | Key | Default | Extra          |
#+------------+--------------+------+-----+---------+----------------+
#| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
#| resources  | varchar(255) | YES  |     | NULL    |                |
#| comments   | varchar(255) | YES  |     | NULL    |                |
#| created_at | datetime     | NO   |     | NULL    |                |
#| updated_at | datetime     | NO   |     | NULL    |                |
#+------------+--------------+------+-----+---------+----------------+

Equipment.create!(resources: 'Bar Table, Screen, Projector, Computer Phone', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Bar Table, Computer Phone', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Computer, Computer Phone', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'TV, Screen', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Video, Screen', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Flipchart, Screen', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Overhead Projector, Screen', comments: 'resources available in the meeting room')

Equipment.create!(resources: 'Bar Table', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Boardcopier', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Computer', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Computer Phone', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Flip Chart', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Overhead Projector', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'PC Projector', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Screen', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'TV', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Video', comments: 'resources available in the meeting room')
Equipment.create!(resources: 'Whiteboard', comments: 'resources available in the meeting room')
