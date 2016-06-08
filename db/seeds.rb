# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sports = [
	{name: "Football"},
	{name: "Course à pied"},
	{name: "Tennis"},
	{name: "Vélo"},
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
	{title: "Seance de footing", description: "Seance de footing à Montussan ce soir à 18h", sport_id: 2, address: "10 route de merigot"},
	{title: "Seance de football", description: "Seance de football à Montussan ce soir à 19h", sport_id: 1, address: "10 route de merigot"},
	{title: "Seance de velo", description: "Seance de velo à Montussan ce soir à 20h", sport_id: 4, address: "Paris"},
	{title: "Seance de judo", description: "Seance de judo à Montussan ce soir à 21h", sport_id: 6, address: "Bordeaux"},
	{title: "Seance de tennis", description: "Seance de tennis à Montussan ce soir à 22h", sport_id: 3, address: "Aquitaine"},
]

sports.each do |sport|
  s = Sport.new(sport)
  s.save
end

seances.each do |seance|
	se = Seance.new(seance)
	se.save
end



puts "Seed done"
