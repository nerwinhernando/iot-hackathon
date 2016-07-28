# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rooms = MeetingRoom.create([
	{room: 'Luzon', area: 'Building I', floor: 1, capacity: 10, equipment: 'projector 1'},
	{room: 'Visayas', area: 'Building I', floor: 1, capacity: 10, equipment: 'projector 1'},
	{room: 'Mindanao', area: 'Building I', floor: 1, capacity: 10, equipment: 'projector 1'},
	{room: 'Pilipinas', area: 'Building I', floor: 1, capacity: 20, equipment: 'projector 1'},
	{room: 'Kotka', area: 'Building I', floor: 2, capacity: 5, equipment: 'projector 1'},
	{room: 'Oulu', area: 'Building I', floor: 2, capacity: 8, equipment: 'projector 1'},
	{room: 'Rovaniemi', area: 'Building I', floor: 2, capacity: 8, equipment: 'projector 1'},
	{room: 'Tampere', area: 'Building I', floor: 2, capacity: 10, equipment: 'projector 1'},
	{room: 'Turku', area: 'Building I', floor: 2, capacity: 6, equipment: 'projector 1'},
	{room: 'Vaasa', area: 'Building I', floor: 2, capacity: 5, equipment: 'projector 1'},
	{room: 'Beijing', area: 'Building I', floor: 3, capacity: 3, equipment: 'projector 1'},
	{room: 'Bullet Train 1', area: 'Building I', floor: 3, capacity: 8, equipment: 'projector 1'},
	{room: 'Bullet Train 2', area: 'Building I', floor: 3, capacity: 4, equipment: 'projector 1'},
	{room: 'Bullet Train 3', area: 'Building I', floor: 3, capacity: 4, equipment: 'projector 1'},
	{room: 'Bullet Train 4', area: 'Building I', floor: 3, capacity: 4, equipment: 'projector 1'},
	{room: 'Bullet Train 5', area: 'Building I', floor: 3, capacity: 4, equipment: 'projector 1'},
	{room: 'Bullet Train 6', area: 'Building I', floor: 3, capacity: 8, equipment: 'projector 1'},
	{room: 'Gniezno', area: 'Building O', floor: 1, capacity: 10, equipment: 'projector 1'},
	{room: 'Hala Stulecia', area: 'Building O', floor: 1, capacity: 6, equipment: 'projector 1'},
	{room: 'Pergola', area: 'Building O', floor: 1, capacity: 8, equipment: 'projector 1'},
	{room: 'Suwalki', area: 'Building O', floor: 1, capacity: 6, equipment: 'projector 1'},
	{room: 'Warszawa', area: 'Building O', floor: 1, capacity: 10, equipment: 'projector 1'},
	{room: 'Wroclaw', area: 'Building O', floor: 1, capacity: 20, equipment: 'projector 1'},
	{room: 'Zakapone', area: 'Building O', floor: 1, capacity: 8, equipment: 'projector 1'}
])

50.times do |n|
	Employee.create([
		{first_name: "emplyee no'#{n}'", last_name: '', emp_no: (n*10)+n, gender: '', contact_no: ''}
	])
end