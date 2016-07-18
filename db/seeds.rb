# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sport.destroy_all
Seance.destroy_all
User.destroy_all

puts '--destroy--all'

users = [
	{first_name: "Florian", last_name: "Maneyrol", email: "florian@hotmail.fr", password: "123soleil", password_confirmation: "123soleil", birth: 24, sex: "Homme", id: 1},
	{first_name: "Camille", last_name: "Mourguet", email: "camille@hotmail.fr", password: "123soleil", password_confirmation: "123soleil", birth: 23, sex: "Femme", id: 2},
]


sports = [
	{id: 1, name: "Football", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468419680/photo-foot_xza0lg.jpg"},
	{id: 2,name: "Course à pied", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468403152/photo-course-a-pied_twevz9.jpg"},
	{id: 3,name: "Tennis", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468409979/photo-tennis_ybbsri.jpg"},
	{id: 4,name: "Vélo", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468419194/photo-velo_jvq86g.jpg"},
	{id: 5,name: "Equitation", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468410236/photo-equitation_pys6od.jpg"},
	{id: 6,name: "Judo", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468407396/photo-judo_fr53gc.jpg"},
	{id: 7,name: "Basketball", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468410497/photo-basketball_oqghrb.jpg"},
	{id: 8,name: "Handball", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468410694/photo-handball_qikwi5.jpg"},
	{id: 9,name: "Rugby", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468411113/photo-rugby_wrbovt.jpg"},
	{id: 10,name: "Golf", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468411295/photo-golf_lzjfo8.jpg"},
	{id: 11,name: "Canoë-kayak", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468411908/photo-canoe_ugktds.jpg"},
	{id: 12,name: "Plongée", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468415593/photo-plongee_pjbffv.jpg"},
	{id: 13,name: "Pétanque", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468415773/photo-petanque_izg93j.jpg"},
	{id: 14,name: "Voile", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468416030/photo-voile_eqii1u.jpg"},
	{id: 15,name: "Natation", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468416467/photo-natation_lyck9y.jpg"},
	{id: 16,name: "Gymnastique", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468416861/photo-gym_od6dhf.jpg"},
	{id: 17,name: "Athlétisme", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468417862/photo-athle_u33k0i.jpg"},
	{id: 18,name: "Karaté", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468417870/photo-karate_sig8oc.jpg"},
	{id: 19,name: "Randonnée", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468418174/photo-rando_ljuist.jpg"},
	{id: 20,name: "Tennis de table", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468418320/photo-tennisdetable_rbtkpz.jpg"},
	{id: 21,name: "Badminton", remote_photo_url: "http://res.cloudinary.com/sportsco/image/upload/v1468418581/photo-bad_wwrsgq.jpg"},
]

seances = [
	{title: "Seance de footing", description: "Seance de footing à Montussan ce soir à 18h", sport_id: 2, user_id: 1, address: "10 route de merigot", start_at: DateTime.strptime("07/30/2016 17:00", "%m/%d/%Y %H:%M") },
	{title: "Seance de football", description: "Seance de football à Montussan ce soir à 19h", sport_id: 1, user_id: 1, address: "10 route de merigot", start_at: DateTime.strptime("07/25/2016 17:00", "%m/%d/%Y %H:%M") },
	{title: "Seance de velo", description: "Seance de velo à Montussan ce soir à 20h", sport_id: 4, user_id: 1, address: "Paris", start_at: DateTime.strptime("07/22/2016 17:00", "%m/%d/%Y %H:%M")},
	{title: "Seance de judo", description: "Seance de judo à Montussan ce soir à 21h", sport_id: 6, user_id: 2, address: "Bordeaux", start_at: DateTime.strptime("08/07/2016 17:00", "%m/%d/%Y %H:%M")},
	{title: "Seance de tennis", description: "Seance de tennis à Montussan ce soir à 22h", sport_id: 3, user_id: 2, address: "Aquitaine", start_at: DateTime.strptime("09/20/2016 17:00", "%m/%d/%Y %H:%M")},
]

users.each do |user|
	u = User.create(user)
	u.save
end

puts "--users created"

sports.each do |sport|
  s = Sport.new(sport)
  s.save
end

puts "--sports created"

seances.each do |seance|
	se = Seance.new(seance)
	se.save
end

puts "--seances created"








puts "Seed done"
