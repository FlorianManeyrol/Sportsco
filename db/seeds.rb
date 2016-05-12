# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sports = [
	{name: "Football"},
	{name: "Rugby"},
	{name: "Velo"},
	{name: "Surf"},
	{name: "Course à pied"},
	{name: "Tennis"},
	{name: "Ping-pong"},
]

sports.each do |sport|
  s = Sport.new(
    sport
  )
  s.save
end

puts "Seed done"
