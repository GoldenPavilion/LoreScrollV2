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

Story.create(
    title: "Star Wars",
    genre: "Science Fantasy",
    story_type: "Screenplay",
    summary: "The Imperial Forces -- under orders from cruel Darth Vader (David Prowse) -- hold Princess Leia (Carrie Fisher) hostage, in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker (Mark Hamill) and Han Solo (Harrison Ford), captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 (Kenny Baker) and C-3PO (Anthony Daniels) to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and justice to the Galaxy.",
    user_id: 1,
    setting_id: 1
)

Story.create(
    title: "Eberron",
    genre: "Fantasy",
    story_type: "Roleplaying Game",
    summary: "Eberron is a campaign setting for Dungeons and Dragons. Eberron is set in a period of healing after devastating 102 year war that ravaged the continent of Khorvaire and split the mighty kingdom into 12 quarreling nations.",
    user_id: 1,
    setting_id: 1
)