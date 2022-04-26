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
    user_id: 2,
    setting_id: 2
)

Setting.create(
    name: "A Galaxy Far, Far Away...",
    summary: "A far off galaxy held together by a mystical power called 'The Force'."
)

Setting.create(
    name: "Rising from the Last War",
    summary: "A world where magic power technology."
)

Character.create(
    name: "Luke Skywalker",
    role: "Main Character",
    age: "19",
    gender: "Male",
    species: "Human",
    job: "Moisture Farmer",
    physical: "Blonde, Scruffy Haired, White Tunic with Tan Boots.",
    personality: "Impulsive, longing to see the galaxy.",
    history: "Luke is Vader's son.",
    motivation: "To join the academy and become a pilot.",
    setting_id: 0
)

Character.create(
    name: "Darth Vader",
    role: "Villian",
    age: "44",
    gender: "Male",
    species: "Human / Machine",
    job: "Sith Enforcer",
    physical: "Tall and imposing, wearing black armor that encloses his entire body and a menacing, monstrous helmet.",
    personality: "Quiet, intimidating, vicious and bloodthirsty.",
    history: "Vader was once the hero of the Republic, Anakin Skywalker, before falling to the dark side.",
    motivation: "To learn everything he can about the dark side to bring back the love of his life.",
    setting_id: 0
)

Character.create(
    name: "Lord of Blade",
    role: "Villian",
    age: "????",
    gender: "Nonbinary",
    species: "Warforged",
    job: "Resistance Leader",
    physical: "A huge, metal-bodied humanoid with multiple arm-blades extending from his back.",
    personality: "Overzealous and passionate.",
    history: "The Lord of Blade longs for a time when the warforged are recognized as living beings.",
    motivation: "To rebel against the human-led order of Khorvaire.",
    setting_id: 1
)

Character.create(
    name: "Auralia ir'Wynarn",
    role: "Supporting Character",
    age: "23",
    gender: "Female",
    species: "Human",
    job: "Queen of Aundair",
    physical: "Red-haired and slender, wearing a long purple gown and a simple golden crown.",
    personality: "Fair-minded, empathetic and reserved.",
    history: "Auralia was recently made Queen when her father died.",
    motivation: "To keep Aundair out of any future war.",
    setting_id: 1
)