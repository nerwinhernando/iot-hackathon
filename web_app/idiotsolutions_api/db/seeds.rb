# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

room = MeetingRoom.create([
	{name: 'Luzon', area: 'Building I', floor: 1, capacity: 10, equipment: 'projector 1'},
	{name: 'Visayas', area: 'Building I', floor: 1, capacity: 10, equipment: 'projector 1'},
	{name: 'Mindanao', area: 'Building I', floor: 1, capacity: 10, equipment: 'projector 1'},
	{name: 'Pilipinas', area: 'Building I', floor: 1, capacity: 20, equipment: 'projector 1'},
	{name: 'Kotka', area: 'Building I', floor: 2, capacity: 5, equipment: 'projector 1'},
	{name: 'Oulu', area: 'Building I', floor: 2, capacity: 8, equipment: 'projector 1'},
	{name: 'Rovaniemi', area: 'Building I', floor: 2, capacity: 8, equipment: 'projector 1'},
	{name: 'Tampere', area: 'Building I', floor: 2, capacity: 10, equipment: 'projector 1'},
	{name: 'Turku', area: 'Building I', floor: 2, capacity: 6, equipment: 'projector 1'},
	{name: 'Vaasa', area: 'Building I', floor: 2, capacity: 5, equipment: 'projector 1'},
	{name: 'Beijing', area: 'Building I', floor: 3, capacity: 3, equipment: 'projector 1'},
	{name: 'Bullet Train 1', area: 'Building I', floor: 3, capacity: 8, equipment: 'projector 1'},
	{name: 'Bullet Train 2', area: 'Building I', floor: 3, capacity: 4, equipment: 'projector 1'},
	{name: 'Bullet Train 3', area: 'Building I', floor: 3, capacity: 4, equipment: 'projector 1'},
	{name: 'Bullet Train 4', area: 'Building I', floor: 3, capacity: 4, equipment: 'projector 1'},
	{name: 'Bullet Train 5', area: 'Building I', floor: 3, capacity: 4, equipment: 'projector 1'},
	{name: 'Bullet Train 6', area: 'Building I', floor: 3, capacity: 8, equipment: 'projector 1'},
	{name: 'Gniezno', area: 'Building O', floor: 1, capacity: 10, equipment: 'projector 1'},
	{name: 'Hala Stulecia', area: 'Building O', floor: 1, capacity: 6, equipment: 'projector 1'},
	{name: 'Pergola', area: 'Building O', floor: 1, capacity: 8, equipment: 'projector 1'},
	{name: 'Suwalki', area: 'Building O', floor: 1, capacity: 6, equipment: 'projector 1'},
	{name: 'Warszawa', area: 'Building O', floor: 1, capacity: 10, equipment: 'projector 1'},
	{name: 'Wroclaw', area: 'Building O', floor: 1, capacity: 20, equipment: 'projector 1'},
	{name: 'Zakapone', area: 'Building O', floor: 1, capacity: 8, equipment: 'projector 1'}
])
