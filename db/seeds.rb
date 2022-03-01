# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts 'Cleaning database'
Category.destroy_all
Hobby.destroy_all
CategoryHobby.destroy_all
puts 'Adding database items'

# CATEGORY TEAM SPORTS

category = Category.create(name: "Team sports")
file = URI.open('https://images.unsplash.com/photo-1562552052-4e9f2d8e8a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
hobby = Hobby.create(name: "Basketball", description: "Basketball is played between two teams of five players each on a rectangular court. Each team tries to score by tossing the ball through the opponent’s goal, an elevated horizontal hoop and net called a basket.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1529768167801-9173d94c2a42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
hobby = Hobby.create(name: "Baseball", description: "Baseball is game played between two opposing teams, of nine players each, that take turns batting and fielding. The game proceeds when a player on the fielding team, called the pitcher, throws a ball which a player on the batting team tries to hit with a bat.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1562552052-4e9f2d8e8a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
hobby = Hobby.create(name: "Football", description: "Also called association football or soccer, is a game involving two teams of 11 players who try to maneuver the ball into the other team's goal without using their hands or arms. The team that scores more goals wins.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1607494628003-613b464734e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGNyaWNrZXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Cricket", description: "Cricket is played with a bat and ball and involves two competing sides (teams) of 11 players. The field is oval with a rectangular area in the middle, known as the pitch.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1616041042832-24ee0dff18d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aG9ja2V5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Ice hockey ", description: "Is played between two teams who wear skates and compete on an ice rink. Each team usually has six players. The object is to propel the puck past a goal line and into a net guarded by a goaltender.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1512299286776-c18be8ed6a1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cnVnYnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Rubgy", description: "Is played by two teams using an oval ball. Players try to score points by carrying the ball to their opponents' end of the field, or by kicking it over a bar fixed between two posts.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

# CATEGORY SPIRITUAL

category = Category.create(name: "Spiritual")
file = URI.open('https://images.unsplash.com/photo-1515942661900-94b3d1972591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXN0cm9sb2d5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Astrology", description: "Is a study of various planets, constellations, the sun and the moon on our lives. It also tells you about your spiritual connection to an entity in the higher plane. ")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1513097847644-f00cfe868607?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1lZGl0YXRpb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Meditation", description: "Is the practice of focusing the mind and relaxing the body. When used consistently over time an individual can literally train the mind to obtain clarity and even different levels of consciousness and awareness about themselves, others and their environment.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1505358131519-deb04e8e7ae3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHN5Y2hpY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Psychic", description: "Hability to see into the unseen, know what is about to happen and communicate with beings and entities that are not found in physical form. The study of the use of psychics in a variety of historical applications is a fascinating study starting in biblical times and proceeding through to modern rulers in the world.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1624274579623-18121fc8126e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGFyb3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Tarot", description: "The belief that reading cards can provide insight into the future has been a belief of the occult for centuries. This mystical ability is one that can be learned by anyone with a dedication and devotion to the craft.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

# CATEGORY MENTAL

category = Category.create(name: "Mental")
file = URI.open('https://images.unsplash.com/photo-1558443957-d056622df610?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80')
hobby = Hobby.create(name: "Languages", description: "To learn a new language is a relatively simple way of sharing a piece of culture, or even humanity, between two people that could not have communicated otherwise.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1576238580501-f21ccaaa83ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
hobby = Hobby.create(name: "Poetry", description: "Poetry is a form of literary art in which language is used for its aesthetic and evocative qualities in addition to, or in lieu of, its apparent meaning. Poetry is a great tool where one can expand on one's own ideas.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1513475382585-d06e58bcb0e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVhZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Reading", description: "Reading is a common hobby and one that can trace its origins back many hundreds of years. One great advantage is that it allows the human mind ")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

# CATEGORY MUSIC

category = Category.create(name: "Music")
file = URI.open('https://images.unsplash.com/photo-1558499737-ff02d688f9da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
hobby = Hobby.create(name: "Guitar", description: "Playing guitar could be an extremely fulfilling and enjoyable experience, is an outlet for your creativity and passion for music. Guitar is one of the most popular instruments that man has always used to express his feelings and personality.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1520872024865-3ff2805d8bb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c2luZ2luZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Singing", description: "It’s the only form of music where there are words to give specific meaning, augmented by the melodies, tones, and rhythms used by other instruments. It is often accompanied by other vocalists (singers) or instruments.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1503095396549-807759245b35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWNhbHMlMjB0aGVhdHJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Musicals", description: "The three main components of a musical are the music, the lyrics, and the story.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1632054553195-bfd7034fee25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJhbmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Start a band", description: "This hobby is intended for any entrepreneur whose goals are to bring his music out of the garage and out into the world.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

# CATEGORY DANCE

category = Category.create(name: "Dance")
file = URI.open('https://images.unsplash.com/photo-1591162689269-a3fcdab967e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGJhbGxldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Ballet", description: "Ballet has always been considered as a unique dance form that can improve co-ordination, memory, posture and rhythm. This can be a hobby, which is effective in development of creativity, poise, responsibility and focus.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1575449235878-6de79c4c8ef4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2Fsc2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Salsa", description: "The great thing about salsa is that just about anyone, regardless of age, can learn it and the atmosphere is totally friendly. You will see people of all nationalities dancing together, attracted by this wonderfully happy ambience.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1575217764519-16d213a41dc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHRhbmdvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create(name: "Tango", description: "Tango is a dance form that involves the expression of feelings and you will see the dancers apparently gliding smoothly, in perfect sync with each other, performing complicated movements in time to the music.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create(category: category, hobby: hobby)

puts "seeding completed"
