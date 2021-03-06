# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

robots = []

200.times do
  robots.push({
    name: Faker::App.name,
    owner: Faker::Company.name,
    specialty: Faker::Hacker.ingverb,
    serial_number: Faker::Company.ein,
  })
end

Robot.create!(robots)
