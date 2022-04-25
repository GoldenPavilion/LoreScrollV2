# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Leonardo", password: "password", email: "leonardo@tmnt.com", penname: "Leo Turtle");
User.create(username: "Donatello", password: "password", email: "donatello@tmnt.com", penname: "Donny Turtle");
User.create(username: "Michaelangelo", password: "password", email: "mikey@tmnt.com", penname: "Mikey Turtle");
User.create(username: "Raphael", password: "password", email: "raphael@tmnt.com", penname: "Raffy Turtle");