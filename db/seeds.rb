# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [
	{first_name: "Florian", last_name: "Maneyrol", email: "florian@hotmail.fr", password: "123soleil", password_confirmation: "123soleil", birth: 24, sex: "Homme" },
	{first_name: "Camille", last_name: "Mourguet", email: "camille@hotmail.fr", password: "123soleil", password_confirmation: "123soleil", birth: 23, sex: "Femme" },
]


sports = [
	{name: "Football", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1465487451/photo-foot_jyjamt.jpg"},
	{name: "Course à pied"},
	{name: "Tennis"},
	{name: "Vélo", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1465487455/photo-velo_roq6jb.jpg" },
	{name: "Equitation"},
	{name: "Judo"},
	{name: "Basket"},
	{name: "Handball"},
	{name: "Rugby"},
	{name: "Golf"},
	{name: "Canoë-kayak"},
	{name: "Plongée"},
	{name: "Pétanque"},
	{name: "Voile"},
	{name: "Natation"},
	{name: "Gymnastique"},
	{name: "Athlétisme"},
	{name: "Karaté"},
	{name: "Randonnée"},
	{name: "Tennis de table"},
	{name: "Badminton"},
]

seances = [
	{title: "Seance de footing", description: "Seance de footing à Montussan ce soir à 18h", sport_id: 2, address: "10 route de merigot", start_at: DateTime.strptime("07/14/2016 17:00", "%m/%d/%Y %H:%M") },
	{title: "Seance de football", description: "Seance de football à Montussan ce soir à 19h", sport_id: 1, address: "10 route de merigot", start_at: DateTime.strptime("07/12/2016 17:00", "%m/%d/%Y %H:%M") },
	{title: "Seance de velo", description: "Seance de velo à Montussan ce soir à 20h", sport_id: 4, address: "Paris", start_at: DateTime.strptime("07/22/2016 17:00", "%m/%d/%Y %H:%M")},
	{title: "Seance de judo", description: "Seance de judo à Montussan ce soir à 21h", sport_id: 6, address: "Bordeaux", start_at: DateTime.strptime("08/07/2016 17:00", "%m/%d/%Y %H:%M")},
	{title: "Seance de tennis", description: "Seance de tennis à Montussan ce soir à 22h", sport_id: 3, address: "Aquitaine", start_at: DateTime.strptime("09/20/2016 17:00", "%m/%d/%Y %H:%M")},
]

sports.each do |sport|
  s = Sport.new(sport)
  s.save
end

puts "sports created"

seances.each do |seance|
	se = Seance.new(seance)
	se.save
end

puts "seances created"

users.each do |user|
	u = User.create(user)
	u.save
end

puts "users created"




puts "Seed done"
