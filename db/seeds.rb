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
	{title: "Seance de footing", description: "Seance de footing à Montussan ce soir à 18h", sport_id: 2},
	{title: "Seance de football", description: "Seance de football à Montussan ce soir à 19h", sport_id: 1},
	{title: "Seance de velo", description: "Seance de velo à Montussan ce soir à 20h", sport_id: 4},
	{title: "Seance de judo", description: "Seance de judo à Montussan ce soir à 21h", sport_id: 6},
	{title: "Seance de tennis", description: "Seance de tennis à Montussan ce soir à 22h", sport_id: 3},
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
