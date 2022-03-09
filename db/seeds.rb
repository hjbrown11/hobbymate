require "open-uri"
require 'faker'
puts 'Cleaning database'
UserHobby.destroy_all
Message.destroy_all
Match.destroy_all
User.destroy_all
CategoryHobby.destroy_all
Category.destroy_all
Hobby.destroy_all
puts 'Adding database items'

# CATEGORY TEAM SPORTS

category = Category.create!(name: "Team sports")
file = URI.open('https://images.unsplash.com/photo-1562552052-4e9f2d8e8a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
hobby = Hobby.create!(name: "Basketball", description: "Basketball is played between two teams of five players each on a rectangular court. Each team tries to score by tossing the ball through the opponent’s goal, an elevated horizontal hoop and net called a basket.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1529768167801-9173d94c2a42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
hobby = Hobby.create!(name: "Baseball", description: "Baseball is game played between two opposing teams, of nine players each, that take turns batting and fielding. The game proceeds when a player on the fielding team, called the pitcher, throws a ball which a player on the batting team tries to hit with a bat.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1562552052-4e9f2d8e8a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
hobby = Hobby.create!(name: "Football", description: "Also called association football or soccer, is a game involving two teams of 11 players who try to maneuver the ball into the other team's goal without using their hands or arms. The team that scores more goals wins.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1607494628003-613b464734e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGNyaWNrZXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Cricket", description: "Cricket is played with a bat and ball and involves two competing sides (teams) of 11 players. The field is oval with a rectangular area in the middle, known as the pitch.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1616041042832-24ee0dff18d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aG9ja2V5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Ice hockey ", description: "Is played between two teams who wear skates and compete on an ice rink. Each team usually has six players. The object is to propel the puck past a goal line and into a net guarded by a goaltender.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1512299286776-c18be8ed6a1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cnVnYnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Rubgy", description: "Is played by two teams using an oval ball. Players try to score points by carrying the ball to their opponents' end of the field, or by kicking it over a bar fixed between two posts.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1593787406536-3676a152d9cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Volleyball", description: "Volleyball is a team sport in which two teams of six players are separated by a net. Each team tries to score points by grounding a ball on the other team's court under organized rules.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1640183959295-f07979fd5b49?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1772&q=80')
hobby = Hobby.create!(name: "Roller Derby", description: "Roller derby is a roller skating contact sport played by two teams of fifteen members.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY SPIRITUAL

category = Category.create!(name: "Spiritual")
file = URI.open('https://images.unsplash.com/photo-1515942661900-94b3d1972591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXN0cm9sb2d5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Astrology", description: "Is a study of various planets, constellations, the sun and the moon on our lives. It also tells you about your spiritual connection to an entity in the higher plane. ")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1640622332859-55e65253475d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80')
hobby = Hobby.create!(name: "Meditation", description: "Is the practice of focusing the mind and relaxing the body. When used consistently over time an individual can literally train the mind to obtain clarity and even different levels of consciousness and awareness about themselves, others and their environment.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1505358131519-deb04e8e7ae3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHN5Y2hpY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Psychic", description: "Hability to see into the unseen, know what is about to happen and communicate with beings and entities that are not found in physical form. The study of the use of psychics in a variety of historical applications is a fascinating study starting in biblical times and proceeding through to modern rulers in the world.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1624274579623-18121fc8126e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGFyb3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Tarot", description: "The belief that reading cards can provide insight into the future has been a belief of the occult for centuries. This mystical ability is one that can be learned by anyone with a dedication and devotion to the craft.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1561579890-3ace74d8e378?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Yoga", description: "A Hindu spiritual and ascetic discipline, a part of which, including breath control, simple meditation, and the adoption of specific bodily postures, is widely practised for health and relaxation.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1615856210162-9ae33390b1a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80')
hobby = Hobby.create!(name: "Community Service", description: "Community service is unpaid work performed by a person or group of people for the benefit and betterment of their community without any form of compensation.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY MENTAL

category = Category.create!(name: "Mental")
file = URI.open('https://images.unsplash.com/photo-1558443957-d056622df610?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80')
hobby = Hobby.create!(name: "Languages", description: "To learn a new language is a relatively simple way of sharing a piece of culture, or even humanity, between two people that could not have communicated otherwise.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1576238580501-f21ccaaa83ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
hobby = Hobby.create!(name: "Poetry", description: "Poetry is a form of literary art in which language is used for its aesthetic and evocative qualities in addition to, or in lieu of, its apparent meaning. Poetry is a great tool where one can expand on one's own ideas.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1513475382585-d06e58bcb0e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVhZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Reading", description: "Reading is a common hobby and one that can trace its origins back many hundreds of years. One great advantage is that it allows the human mind ")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1523240795612-9a054b0db644?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Creative Writing", description: "Creative writing is any writing that goes outside the bounds of normal professional, journalistic, academic, or technical forms of literature, typically identified by an emphasis on narrative craft, character development, and the use of literary tropes or with various traditions of poetry and poetics.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY MUSIC

category = Category.create!(name: "Music")
file = URI.open('https://images.unsplash.com/photo-1558499737-ff02d688f9da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
hobby = Hobby.create!(name: "Guitar", description: "Playing guitar could be an extremely fulfilling and enjoyable experience, is an outlet for your creativity and passion for music. Guitar is one of the most popular instruments that man has always used to express his feelings and personality.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1520872024865-3ff2805d8bb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c2luZ2luZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Singing", description: "It’s the only form of music where there are words to give specific meaning, augmented by the melodies, tones, and rhythms used by other instruments. It is often accompanied by other vocalists (singers) or instruments.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1503095396549-807759245b35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWNhbHMlMjB0aGVhdHJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Musicals", description: "The three main components of a musical are the music, the lyrics, and the story.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1632054553195-bfd7034fee25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJhbmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Start a band", description: "This hobby is intended for any entrepreneur whose goals are to bring his music out of the garage and out into the world.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1597953066321-9bf0e32348fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1772&q=80')
hobby = Hobby.create!(name: "Opera", description: "Opera is a staged drama set to music in its entirety, made up of vocal pieces with instrumental accompaniment and usually with orchestral overtures and interludes.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1529068726703-d4dfa1c99b99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80')
hobby = Hobby.create!(name: "Piano", description: "The piano trains players on all four harmonic parts of music. Most instruments only allow playing of one note at a time. Piano also offers many different styles of music for all tastes.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY DANCE

category = Category.create!(name: "Dance")
file = URI.open('https://images.unsplash.com/photo-1591162689269-a3fcdab967e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGJhbGxldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Ballet", description: "Ballet has always been considered as a unique dance form that can improve co-ordination, memory, posture and rhythm. This can be a hobby, which is effective in development of creativity, poise, responsibility and focus.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1575449235878-6de79c4c8ef4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2Fsc2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Salsa", description: "The great thing about salsa is that just about anyone, regardless of age, can learn it and the atmosphere is totally friendly. You will see people of all nationalities dancing together, attracted by this wonderfully happy ambience.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1575217764519-16d213a41dc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHRhbmdvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
hobby = Hobby.create!(name: "Tango", description: "Tango is a dance form that involves the expression of feelings and you will see the dancers apparently gliding smoothly, in perfect sync with each other, performing complicated movements in time to the music.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1504609813442-a8924e83f76e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Swing", description: "Swing dance is a lively style of social dancing in which a dancer often lifts, spins and flips his or her partner. Swing dance is a group of social dances that developed with the swing style of jazz music in the 1920s–1940s, with the origins of each dance predating the popular 'swing era'.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1594206630984-c2d2af87cbee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80')
hobby = Hobby.create!(name: "Ballroom", description: "Ballroom dance is a set of partner dances, which are enjoyed both socially and competitively around the world, mostly because of its performance and entertainment aspects. Ballroom dancing is also widely enjoyed on stage, film, and television.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1550026593-cb89847b168d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Contemporary", description: "Contemporary dance is a style of expressive dance that combines elements of several dance genres including modern, jazz, lyrical and classical ballet. Contemporary dancers strive to connect the mind and the body through fluid dance movements.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1588540111535-2b7ef1eb7833?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1772&q=80')
hobby = Hobby.create!(name: "Hip Hop", description: "Hip hop dance is a range of street dance styles primarily performed to hip hop music or that have evolved as part of hip hop culture. It is influenced by a wide range of styles that were create!d in the 1970s and made popular by dance crews.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1602303917904-39912f325b69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Jazz", description: "Jazz dance is a performance dance and style that arose in the United States in the mid 20th century. Jazz dance may allude to vernacular jazz about to Broadway or dramatic jazz. The two types expand on African American vernacular styles of dance that arose with jazz music.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY OUTDOORS

category = Category.create!(name: "Outdoors")
file = URI.open('https://images.unsplash.com/photo-1541625810516-44f1ce894bcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Cycling", description: "Cycling can be enjoyed by almost everyone, regardless of your age or your physical ability. You might enjoy a heart pumping downhill ride on a narrow dirt track. On the other hand, you may prefer to explore the open road. Either way, cycling offers entertainment, exercise, and an excellent way to just get around town.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1540539234-c14a20fb7c7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Running", description: "Running is a both a sport which can take many forms, and a great way to get in shape. The term running can refer to any of a variety of speeds ranging from a slow jog to all-out sprinting.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1571053252951-a5bddbab3b1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Backpacking", description: "If you enjoy the outdoors and if you are looking for a hobby that is not expensive, backpacking is the right one for you. There are people who go backpacking all the time. Backpacking is a healthy activity and it also gives you the chance to see places in a new perspective.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1609788063095-d71bf3c1f01f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Camping", description: "Camping describes a range of activities. Survivalist campers set off with little more than their boots, whereas recreational vehicle travelers arrive equipped with their own electricity, heat, and patio furniture. Camping is often enjoyed in conjunction with activities, such as: hiking, whitewater kayaking, hill walking, climbing, canoeing, mountain biking, motorcycling, swimming, and fishing.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1539635278303-d4002c07eae3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Hiking", description: "Hiking is one of the most beneficial and healthy hobbies anyone could choose to adopt. The fresh air and sun, aerobic walking, and up-close exposure to natural features such as streams, forests and mountainsides help to compensate for many of the physical and mental stresses or the work week.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1604766038176-736d6d72d652?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2232&q=80')
hobby = Hobby.create!(name: "Mountaineering", description: "Mountaineering, also called mountain climbing, the sport of attaining, or attempting to attain, high points in mountainous regions, mainly for the pleasure of the climb.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80')
hobby = Hobby.create!(name: "Skiing", description: "Skiing is a recreational activity as well as a competitive sport. The skier attaches long skis, also called runners to specially designed boots and uses them to travel on top of snow.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1423012373122-fff0a5d28cc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Skateboarding", description: "Skateboarding is an action sport originating in the United States that involves riding and performing tricks using a skateboard, as well as a recreational activity, an art form, an entertainment industry job, and a method of transportation.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY WATER SPORTS

category = Category.create!(name: "Water Sports")
file = URI.open('https://images.unsplash.com/photo-1613578699399-82ae71be53a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1774&q=80')
hobby = Hobby.create!(name: "Sailing", description: "Sailing specifically refers to the sport of using wind to power sails and propel the boat forward (rather than engines). Unlike windsurfing and surfing, the sport takes place in an enclosed boat rather than on a board.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1613450861177-c281f178b920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Surfing", description: "Surfing is a surface water sport in which the wave rider, referred to as a 'surfer', rides on the forward face of a wave, which is most often carrying the surfer towards shore. Waves suitable for surfing are primarily found in the ocean, but can also be found in lakes or in rivers in the form of a standing wave or tidal bore. ")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1588472235276-7638965471e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80')
hobby = Hobby.create!(name: "Kayaking", description: "Kayaking is the use of a kayak for moving over water. It is distinguished from canoeing by the sitting position of the paddler and the number of blades on the paddle. A kayak is a low-to-the-water, canoe-like boat in which the paddler sits facing forward, legs in front, using a double-bladed paddle to pull front-to-back on one side and then the other in rotation. Most kayaks have closed decks, although sit-on-top and inflatable kayaks are growing in popularity as well.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1568759786345-791abf9275fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80')
hobby = Hobby.create!(name: "Canoeing", description: "Canoeing is an activity which involves paddling a canoe with a single-bladed paddle. Most present-day canoeing is done as or as a part of a sport or recreational activity. A few of the recreational forms of canoeing are canoe camping and canoe racing. Other forms include a wide range of canoeing on lakes, rivers, oceans, ponds and streams.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1566069301436-3fd8f32f493d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Swimming", description: "Swimming is an individual or team racing sport that requires the use of one's entire body to move through water. The sport takes place in pools or open water (e.g., in a sea or lake).")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1555837917-04ba482e17f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80')
hobby = Hobby.create!(name: "Snorkeling", description: "Snorkeling is the practice of swimming on or through a body of water while equipped with a diving mask, a shaped breathing tube called a snorkel, and usually swimfins. Use of this equipment allows the snorkeler to observe underwater attractions for extended periods with relatively little effort and to breathe while face-down at the surface.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1586508577428-120d6b072945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1856&q=80')
hobby = Hobby.create!(name: "Diving", description: "Diving can be divided into two large categories: scuba diving and freediving. While freediving is done at breath-hold, scuba diving requires a breathing apparatus. There are many different types of scuba diving.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1484634410561-aa51b83c27d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Water Skiing", description: "Water skiing is a surface water sport in which an individual is pulled behind a boat or a cable ski installation over a body of water, skimming the surface on two skis or one ski.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY DUAL SPORTS
category = Category.create!(name: "Duel Sports")
file = URI.open('https://images.unsplash.com/photo-1599474924187-334a4ae5bd3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1683&q=80')
hobby = Hobby.create!(name: "Badminton", description: "Badminton is a racquet sport played using racquets to hit a shuttlecock across a net.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1554290813-ec6a2a72e5c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80')
hobby = Hobby.create!(name: "Squash", description: "Squash is a racquet sport played by two players in a four-walled court with a small, hollow rubber ball. Once the ball is served, players take turns hitting the ball against the front wall, above the tin and below the out line.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1622279457486-62dcc4a431d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Tennis", description: "Tennis is a racket sport that can be played individually against a single opponent or between two teams of two players each. Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent's court.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1593442808948-b1df0a8f8047?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1706&q=80')
hobby = Hobby.create!(name: "Table Tennis", description: "Table tennis is a game played inside by two or four people. The players stand at each end of a table which has a low net across the middle and hit a small light ball over the net, using small bats.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1591491653056-4313c0e2f379?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Golf", description: "A game played on a large open-air course, in which a small hard ball is struck with a club into a series of small holes in the ground, the object being to use the fewest possible strokes to complete the course.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1611816153165-fed23698666d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Boxing", description: "Boxing is a combat sport in which two people, usually wearing protective gloves and other protective equipment such as hand wraps and mouthguards, throw punches at each other for a predetermined amount of time in a boxing ring.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1630963545256-a9e17d4a7968?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80')
hobby = Hobby.create!(name: "Fencing", description: "Fencing is a group of three related combat sports. The three disciplines in modern fencing are the foil, the épée, and the sabre; winning points are made through the weapon's contact with an opponent.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1541337082051-5959dbb57d5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Wrestling", description: "The sport or activity of grappling with an opponent and trying to throw or hold them down on the ground, typically according to a code of rules.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY ART

category = Category.create!(name: "Art")
file = URI.open('https://images.unsplash.com/photo-1493106641515-6b5631de4bb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2169&q=80')
hobby = Hobby.create!(name: "Pottery", description: "Pottery is the process and the products of forming vessels and other objects with clay and other ceramic materials, which are fired at high temperatures to give them a hard and durable form. Major types include earthenware, stoneware and porcelain.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1477647966959-5a95d41d625a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Life Drawing", description: "A 'life drawing' is a drawing of the human figure from observation of a live model. A figure drawing may be a composed work of art or a figure study done in preparation for a more finished work such as a painting.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1622550105129-02c04a85a5f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Photography", description: "Photography is the art or process of taking pictures using a camera. If you're very interested in photography, you might want to learn how to develop your own film in a darkroom.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1589651375281-c3e9308ae434?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80')
hobby = Hobby.create!(name: "Calligraphy", description: "The art of producing beautiful writing, often create!d with a special pen or brush.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1591432429574-5c0c16ef2f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1764&q=80')
hobby = Hobby.create!(name: "Watercolor", description: "Watercolor or watercolour, also aquarelle, is a painting method in which the paints are made of pigments suspended in a water-based solution.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1531913764164-f85c52e6e654?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1634&q=80')
hobby = Hobby.create!(name: "Oil Painting", description: "Oil painting is the process of painting with pigments with a medium of drying oil as the binder. It has been the most common technique for artistic painting on wood panel or canvas for several centuries, spreading from Europe to the rest of the world. ")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1534126511673-b6899657816a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Sewing", description: "Sewing is the craft of fastening or attaching objects using stitches made with a sewing needle and thread. Sewing is one of the oldest of the textile arts, arising in the Paleolithic era.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1536502829567-baf877a670b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Jewelry Making", description: "Jewelry making is the production of artistic articles (personal ornaments, everyday articles, religious articles, weapons) primarily from precious metals (gold, silver, and platinum) but also from certain other nonferrous metals, frequently in combination with precious and semiprecious stones, pearls, glass, amber, mother-of-pearl, ivory, and similar materials.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1631396326838-de37e5f8bcbc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Woodwork", description: "Woodworking is the skill of making items from wood, and includes cabinet making (cabinetry and furniture), wood carving, joinery, carpentry, and woodturning. This can be to make useful or decorative items.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1610735048409-b72a192e89fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2232&q=80')
hobby = Hobby.create!(name: "Cinematography", description: "Cinematography is the art and craft of capturing a given directive on camera. It involves the general composition of scenes, camera angles, choice of lens, lighting, colour etc. Filmmaking is the process by which a film is made from start to finish.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY MOTOR SPORTS

category = Category.create!(name: "Motor Sports")
file = URI.open('https://images.unsplash.com/photo-1505570554449-69ce7d4fa36b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Go Karting", description: "The sport or activity of racing go-karts (small racing cars with lightweight or skeleton bodies) around a track.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1551759390-5c112a9ffef0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1930&q=80')
hobby = Hobby.create!(name: "Motocross", description: "Motocross is a form of off-road motorcycle racing held on enclosed off-road circuits.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1560692830-04adc2f31119?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Auto Racing", description: "Auto racing (also known as car racing, motor racing, or automobile racing) is a motorsport involving the racing of automobiles for competition.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1549351245-ac6dda50eb92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Snowmobiling", description: "Snowmobile racing is a sport in which athletes use snowmobiles to compete on purpose built courses or on natural snow-covered terrains.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY GAMES
category = Category.create!(name: "Games")
file = URI.open('https://images.unsplash.com/photo-1596451190630-186aff535bf2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1773&q=80')
hobby = Hobby.create!(name: "Poker", description: "Several card games in which a player bets that the value of his or her hand is greater than that of the hands held by others, in which each subsequent player must either equal or raise the bet or drop out, and in which the player holding the highest hand at the end of the betting wins the pot.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1511882150382-421056c89033?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80')
hobby = Hobby.create!(name: "Arcade Games", description: "An arcade game is a game machine typically found in public places like malls, restaurants and amusement arcades, and is usually coin operated. Arcade games are usually video games, pinball machines or electromechanical games.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1575553939928-d03b21323afe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Billiards/Pool", description: "Any of several games played on an oblong table by driving small balls against one another or into pockets with a cue specifically, a game in which one scores by causing a cue ball to hit in succession two object balls.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1591635566278-10dca0ca76ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Board Games", description: "Board games are tabletop games that typically use pieces moved or placed on a pre-marked board and often include elements of table, card, role-playing, and miniatures games as well. Most feature a competition between two or more players.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1523875194681-bedd468c58bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80')
hobby = Hobby.create!(name: "Chess", description: "A board game of strategic skill for two players, played on a chequered board on which each playing piece is moved according to precise rules. The object is to put the opponent's king under a direct attack from which escape is impossible(checkmate).")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1558008258-7ff8888b42b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2231&q=80')
hobby = Hobby.create!(name: "Video Games", description: "A video game is an electronic game that involves interaction with a user interface or input device - such as a joystick, controller, keyboard, or motion sensing device - to generate visual feedback. This feedback is shown on a video display device, such as a TV set, monitor, touchscreen, or virtual reality headset.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# CATEGORY FOOD AND DRINK
category = Category.create!(name: "Food & Drink")
file = URI.open('https://images.unsplash.com/photo-1558670460-cad0c19b1840?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2232&q=80')
hobby = Hobby.create!(name: "Wine Tasting", description: "Wine tastings are events designed to give enthusiasts the opportunity to sample a range of wines. The events can be very much like classes (seated, seminar-like events), or they can be more like parties (tasters milling around informally).")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1542528180-0c79567c66de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1757&q=80')
hobby = Hobby.create!(name: "Cookery", description: "The skill, art and activity of cooking and preparing food. This can be practical or creative and encompass many styles, techniques and ingredients from around the world.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1607446046262-3b3988ac3b43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80')
hobby = Hobby.create!(name: "Bartending/Mixology", description: "The skill and art of being able to mix different cocktails, which can often encompass both the creation of the drink and the performance of the act of making the drink.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1597528662465-55ece5734101?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80')
hobby = Hobby.create!(name: "Baking", description: "The activity of making things such as cakes, bread, and biscuits by cooking them inside an oven. Often this will include cretive presentation and decoration of the baked item.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1627738668807-5bdcfe92acfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Vegetable Growing", description: "The act of cultivating and growing vegetables for consumption. Which vegetables can be grown will depend on the climate and time of the year.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

file = URI.open('https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
hobby = Hobby.create!(name: "Food Critic", description: "A food critic, also known as a restaurant critic or food writer, is someone who samples particular foods or restaurants and then provides commentary afterwards regarding all elements relating to the dining experience.")
hobby.photo.attach(io: file, filename: hobby.name, content_type: 'image/jpeg')
category_hobby = CategoryHobby.create!(category: category, hobby: hobby)

# HOBBY SAMPLES - SO WE CAN ASSIGN DIFFERENT USER THE SAME HOBBY

hobby_sample_one = Hobby.all.sample
hobby_sample_two = Hobby.all.sample
hobby_sample_three = Hobby.all.sample
hobby_sample_four = Hobby.all.sample
hobby_sample_five = Hobby.all.sample
hobby_sample_six = Hobby.all.sample
hobby_sample_seven = Hobby.all.sample
hobby_sample_eight = Hobby.all.sample
hobby_sample_nine = Hobby.all.sample
hobby_sample_ten = Hobby.all.sample

# USER SEEDS FOR MATCHED USERS - THESE ONES WILL BE MATCHED BELOW

user_one = User.create!(email: "user_one@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "One", age: 36, bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. I'm also super interested in #{Faker::Science.science}.")
file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_one.photo.attach(io: file, filename: user_one.last_name, content_type: 'image/jpeg')
user_two = User.create!(email: "user_two@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Two", age: 25, address: "Carrer del Mas Casanovas, 55, 08025 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. I also loveeee #{Faker::Restaurant.type} food.")
file = URI.open('https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_two.photo.attach(io: file, filename: user_two.last_name, content_type: 'image/jpeg')

user_three = User.create!(email: "user_three@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Three", age: 24, address: "Ronda de Sant Pere, 35, 08010 Barcelona", bio: "My favorite book is #{Faker::Book.title} and I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. I studied #{Faker::Science.science}.")
file = URI.open('https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_three.photo.attach(io: file, filename: user_three.last_name, content_type: 'image/jpeg')
user_four = User.create!(email: "user_four@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Four", age: 28, address: "Avinguda Diagonal, 420, 08037 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_four.photo.attach(io: file, filename: user_four.last_name, content_type: 'image/jpeg')

# USER SEEDS FOR UNMATCHED USERS - THESE ARE TO TEST THE MATCHING FUNCTIONALITY
user_five = User.create!(email: "user_five@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Five", age: 32, address: "Carrer de la Indústria, 129, 08025 Barcelona", bio: "Right now, I'm reading #{Faker::Book.title} - totally recommend! I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1776&q=80')
user_five.photo.attach(io: file, filename: user_five.last_name, content_type: 'image/jpeg')
user_six = User.create!(email: "user_six@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Six", age: 26, address: "Pl. de Lesseps, 20, 08023 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. I read a lot about #{Faker::Science.science}.")
file = URI.open('https://images.unsplash.com/photo-1500917293891-ef795e70e1f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_six.photo.attach(io: file, filename: user_six.last_name, content_type: 'image/jpeg')

user_seven = User.create!(email: "user_seven@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Seven", age: 29, address: "Carrer de Còrsega, 482, 08025 Barcelona", bio: "My favorite animal is the #{Faker::Creature::Animal.name}. I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1605462863863-10d9e47e15ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_seven.photo.attach(io: file, filename: user_seven.last_name, content_type: 'image/jpeg')
user_eight = User.create!(email: "user_eight@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Eight", age: 28, address: "C. de Pere IV, 272, 08005 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1604057883945-2b8b91ea1575?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_eight.photo.attach(io: file, filename: user_eight.last_name, content_type: 'image/jpeg')

user_nine = User.create!(email: "user_nine@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Nine", age: 31, address: "Carrer del Vallespir, 44, 08014 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. My favorite food is #{Faker::Restaurant.type} food.")
file = URI.open('https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_nine.photo.attach(io: file, filename: user_nine.last_name, content_type: 'image/jpeg')
user_ten = User.create!(email: "user_ten@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Ten", age: 31, address: "Gran Via de les Corts Catalanes, 111, 08075 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. I work in #{Faker::Science.science}.")
file = URI.open('https://images.unsplash.com/photo-1526080652727-5b77f74eacd2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1776&q=80')
user_ten.photo.attach(io: file, filename: user_ten.last_name, content_type: 'image/jpeg')

user_eleven = User.create!(email: "user_eleven@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Eleven", age: 26, address: "Pl. de Pau Vila, 3, 08039 Barcelona", bio: "I absolutely love all animals - but the best is the #{Faker::Creature::Animal.name}. I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1442&q=80')
user_eleven.photo.attach(io: file, filename: user_eleven.last_name, content_type: 'image/jpeg')

user_twelve = User.create!(email: "user_twelve@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Twelve", age: 22, address: "Pl. de Pau Vila, 7, 08039 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1592755219588-d4ff92a0d4de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_twelve.photo.attach(io: file, filename: user_twelve.last_name, content_type: 'image/jpeg')

user_thirteen = User.create!(email: "user_thirteen@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Thirteen", age: 64, address: "Carrer de Rafael Capdevila, 1-3, 08018 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1585807515950-bc46d934c28b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_thirteen.photo.attach(io: file, filename: user_thirteen.last_name, content_type: 'image/jpeg')

user_fourteen = User.create!(email: "user_fourteen@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Fourteen", age: 35, address: "Av. del Maresme, 192, 08918 Badalona, Barcelona", bio: "I'm a total gamer, I love to play #{Faker::Game.title}. I also love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1507152832244-10d45c7eda57?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80')
user_fourteen.photo.attach(io: file, filename: user_fourteen.last_name, content_type: 'image/jpeg')

user_fifteen = User.create!(email: "user_fifteen@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Fifteen", age: 31, address: "Rambla de Sant Joan, 59, 08917 Badalona, Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. I can't stop playing #{Faker::Game.title} right now, it's the best!")
file = URI.open('https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_fifteen.photo.attach(io: file, filename: user_fifteen.last_name, content_type: 'image/jpeg')

user_sixteen = User.create!(email: "user_sixteen@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Sixteen", age: 29, address: "Carrer de Sant Antoni Maria Claret, 362, 08041 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. I'd love to learn more about #{Faker::Science.science}!")
file = URI.open('https://images.unsplash.com/photo-1523825036634-aab3cce05919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_sixteen.photo.attach(io: file, filename: user_sixteen.last_name, content_type: 'image/jpeg')


user_seventeen = User.create!(email: "user_seventeen@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Seventeen", age: 52, address: "Carrer de Larrard, 41, 08024 Barcelona", bio: "I watch loads of anime, I really like #{Faker::JapaneseMedia::StudioGhibli.movie} and #{Faker::JapaneseMedia::StudioGhibli.movie} at the moment. I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1624224971170-2f84fed5eb5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1699&q=80')
user_seventeen.photo.attach(io: file, filename: user_seventeen.last_name, content_type: 'image/jpeg')

user_eighteen = User.create!(email: "user_eighteen@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Eighteen", age: 26, address: "Passeig de Manuel Girona, 33, 08034 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1499651681375-8afc5a4db253?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1697&q=80')
user_eighteen.photo.attach(io: file, filename: user_eighteen.last_name, content_type: 'image/jpeg')

user_nineteen = User.create!(email: "user_nineteen@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Nineteen", age: 30, address: "Avinguda de Rio de Janeiro, 42, 08016 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1748&q=80')
user_nineteen.photo.attach(io: file, filename: user_nineteen.last_name, content_type: 'image/jpeg')

user_twenty = User.create!(email: "user_twenty@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Twenty", age: 37, address: "C/ de la Portaferrissa, 22, 08002 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. Fact about me...I can't stand #{Faker::Restaurant.type} food.")
file = URI.open('https://images.unsplash.com/photo-1487573884658-a5d3c667584e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1703&q=80')
user_twenty.photo.attach(io: file, filename: user_twenty.last_name, content_type: 'image/jpeg')

user_twentyone = User.create!(email: "user_twentyone@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Twentyone", age: 27, address: "Avinguda de Rio de Janeiro, 20, 08016 Barcelona", bio: "My favourite film is 100% #{Faker::JapaneseMedia::StudioGhibli.movie}. I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1543965170-4c01a586684e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1749&q=80')
user_twentyone.photo.attach(io: file, filename: user_twentyone.last_name, content_type: 'image/jpeg')

user_twentytwo = User.create!(email: "user_twentytwo@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Twentytwo", age: 24, address: "Carrer de la Selva de Mar, 40, 08019 Barcelona", bio: "I am obsessed with music, my favorite band is #{Faker::Music.band}. I also love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1509839862600-309617c3201e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_twentytwo.photo.attach(io: file, filename: user_twentytwo.last_name, content_type: 'image/jpeg')

user_twentythree = User.create!(email: "user_twentythree@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Twentythree", age: 34, address: "Carrer de la Selva de Mar, 60, 08019 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. Can't stop listening to #{Faker::Music.band} right now!")
file = URI.open('https://images.unsplash.com/photo-1601935111741-ae98b2b230b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_twentythree.photo.attach(io: file, filename: user_twentythree.last_name, content_type: 'image/jpeg')

user_twentyfour = User.create!(email: "user_twentyfour@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Twentyfour", age: 29, address: "C/ de Provença, 312, 08037 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. I'm a total nerd for #{Faker::Science.science}.")
file = URI.open('https://images.unsplash.com/photo-1536551739350-d473d0f5d66a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_twentyfour.photo.attach(io: file, filename: user_twentyfour.last_name, content_type: 'image/jpeg')

user_twentyfive = User.create!(email: "user_twentyfive@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Twentyfive", age: 20, address: "Rambla de Catalunya, 37, 08007 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1543050047-17cdabbc2d1f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80')
user_twentyfive.photo.attach(io: file, filename: user_twentyfive.last_name, content_type: 'image/jpeg')

user_twentysix = User.create!(email: "user_twentysix@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Twentysix", age: 23, address: "Carrer del Comte d'Urgell, 1, 08011 Barcelona", bio: "Best musician, without a doubt: #{Faker::Music.band}. I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1513097633097-329a3a64e0d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1696&q=80')
user_twentysix.photo.attach(io: file, filename: user_twentysix.last_name, content_type: 'image/jpeg')

user_twentyseven = User.create!(email: "user_twentyseven@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Twentyseven", age: 31, address: "La Rambla, 51-59, 08002 Barcelona", bio: "I'm trying really hard to learn to play the #{Faker::Music.instrument}. I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1622395165399-f2fc02cb605a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80')
user_twentyseven.photo.attach(io: file, filename: user_twentyseven.last_name, content_type: 'image/jpeg')

user_twentyeight = User.create!(email: "user_twentyeight@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Twentyeight", age: 37, address: "Carrer de Montcada, 25, 08003 Barcelona", bio: "If you can play the #{Faker::Music.instrument} please let me know, I really want to learn! I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1534180477871-5d6cc81f3920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_twentyeight.photo.attach(io: file, filename: user_twentyeight.last_name, content_type: 'image/jpeg')

user_twentynine = User.create!(email: "user_twentynine@gmail.com", password: "123456", first_name: Faker::Name.male_first_name, last_name: "Twentynine", age: 36, address: "Av. de Francesc Cambó, 30, 08003 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}. Fun fact: I've played the #{Faker::Music.instrument} for 12 years now - it's so fun!")
file = URI.open('https://images.unsplash.com/photo-1596747742222-008b5a85bc0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_twentynine.photo.attach(io: file, filename: user_twentynine.last_name, content_type: 'image/jpeg')

user_thirty = User.create!(email: "user_thirty@gmail.com", password: "123456", first_name: Faker::Name.female_first_name, last_name: "Thirty", age: 42, address: "Carrer de Buenaventura Muñoz, 11, 08018 Barcelona", bio: "I love #{Faker::Hobby.activity} and #{Faker::Hobby.activity}.")
file = URI.open('https://images.unsplash.com/photo-1490195117352-aa267f47f2d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
user_thirty.photo.attach(io: file, filename: user_thirty.last_name, content_type: 'image/jpeg')

# USER HOBBY SEEDS - THIS WILL ASSIGN HOBBIES TO BOTH MATCHED AND UNMATCHED USERS, SO THEY SHOW UP IN EACH OTHER'S SUGGESTIONS
UserHobby.create!(user_id: user_one.id, hobby_id: hobby_sample_one.id)

UserHobby.create!(user_id: user_two.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_two.id, hobby_id: hobby_sample_five.id)
UserHobby.create!(user_id: user_two.id, hobby_id: hobby_sample_four.id)
UserHobby.create!(user_id: user_two.id, hobby_id: hobby_sample_seven.id)

UserHobby.create!(user_id: user_three.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_three.id, hobby_id: hobby_sample_nine.id)
UserHobby.create!(user_id: user_three.id, hobby_id: hobby_sample_six.id)

UserHobby.create!(user_id: user_four.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_four.id, hobby_id: hobby_sample_eight.id)
UserHobby.create!(user_id: user_four.id, hobby_id: hobby_sample_nine.id)

UserHobby.create!(user_id: user_five.id, hobby_id: hobby_sample_six.id)
UserHobby.create!(user_id: user_five.id, hobby_id: hobby_sample_five.id)
UserHobby.create!(user_id: user_five.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_five.id, hobby_id: hobby_sample_four.id)

UserHobby.create!(user_id: user_six.id, hobby_id: hobby_sample_three.id)
UserHobby.create!(user_id: user_six.id, hobby_id: hobby_sample_two.id)
UserHobby.create!(user_id: user_six.id, hobby_id: hobby_sample_one.id)

UserHobby.create!(user_id: user_seven.id, hobby_id: hobby_sample_four.id)
UserHobby.create!(user_id: user_seven.id, hobby_id: hobby_sample_six.id)

UserHobby.create!(user_id: user_eight.id, hobby_id: hobby_sample_five.id)
UserHobby.create!(user_id: user_eight.id, hobby_id: hobby_sample_three.id)

UserHobby.create!(user_id: user_nine.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_nine.id, hobby_id: hobby_sample_three.id)
UserHobby.create!(user_id: user_nine.id, hobby_id: hobby_sample_five.id)

UserHobby.create!(user_id: user_ten.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_ten.id, hobby_id: hobby_sample_four.id)
UserHobby.create!(user_id: user_ten.id, hobby_id: hobby_sample_seven.id)
UserHobby.create!(user_id: user_ten.id, hobby_id: hobby_sample_ten.id)

UserHobby.create!(user_id: user_eleven.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_eleven.id, hobby_id: hobby_sample_two.id)

UserHobby.create!(user_id: user_twelve.id, hobby_id: hobby_sample_three.id)
UserHobby.create!(user_id: user_twelve.id, hobby_id: hobby_sample_four.id)
UserHobby.create!(user_id: user_twelve.id, hobby_id: hobby_sample_five.id)

UserHobby.create!(user_id: user_thirteen.id, hobby_id: hobby_sample_six.id)
UserHobby.create!(user_id: user_thirteen.id, hobby_id: hobby_sample_seven.id)

UserHobby.create!(user_id: user_fourteen.id, hobby_id: hobby_sample_eight.id)
UserHobby.create!(user_id: user_fourteen.id, hobby_id: hobby_sample_nine.id)
UserHobby.create!(user_id: user_fourteen.id, hobby_id: hobby_sample_ten.id)

UserHobby.create!(user_id: user_fifteen.id, hobby_id: hobby_sample_nine.id)

UserHobby.create!(user_id: user_sixteen.id, hobby_id: hobby_sample_eight.id)
UserHobby.create!(user_id: user_sixteen.id, hobby_id: hobby_sample_seven.id)
UserHobby.create!(user_id: user_sixteen.id, hobby_id: hobby_sample_five.id)
UserHobby.create!(user_id: user_sixteen.id, hobby_id: hobby_sample_three.id)

UserHobby.create!(user_id: user_seventeen.id, hobby_id: hobby_sample_six.id)
UserHobby.create!(user_id: user_seventeen.id, hobby_id: hobby_sample_seven.id)

UserHobby.create!(user_id: user_eighteen.id, hobby_id: hobby_sample_eight.id)
UserHobby.create!(user_id: user_eighteen.id, hobby_id: hobby_sample_nine.id)
UserHobby.create!(user_id: user_eighteen.id, hobby_id: hobby_sample_two.id)
UserHobby.create!(user_id: user_eighteen.id, hobby_id: hobby_sample_one.id)

UserHobby.create!(user_id: user_nineteen.id, hobby_id: hobby_sample_two.id)
UserHobby.create!(user_id: user_nineteen.id, hobby_id: hobby_sample_eight.id)

UserHobby.create!(user_id: user_twenty.id, hobby_id: hobby_sample_eight.id)
UserHobby.create!(user_id: user_twenty.id, hobby_id: hobby_sample_seven.id)
UserHobby.create!(user_id: user_twenty.id, hobby_id: hobby_sample_four.id)

UserHobby.create!(user_id: user_twentyone.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_twentyone.id, hobby_id: hobby_sample_four.id)
UserHobby.create!(user_id: user_twentyone.id, hobby_id: hobby_sample_eight.id)

UserHobby.create!(user_id: user_twentytwo.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_twentytwo.id, hobby_id: hobby_sample_five.id)

UserHobby.create!(user_id: user_twentythree.id, hobby_id: hobby_sample_ten.id)

UserHobby.create!(user_id: user_twentyfour.id, hobby_id: hobby_sample_nine.id)
UserHobby.create!(user_id: user_twentyfour.id, hobby_id: hobby_sample_eight.id)

UserHobby.create!(user_id: user_twentyfive.id, hobby_id: hobby_sample_seven.id)
UserHobby.create!(user_id: user_twentyfive.id, hobby_id: hobby_sample_six.id)

UserHobby.create!(user_id: user_twentysix.id, hobby_id: hobby_sample_five.id)
UserHobby.create!(user_id: user_twentysix.id, hobby_id: hobby_sample_four.id)
UserHobby.create!(user_id: user_twentysix.id, hobby_id: hobby_sample_three.id)
UserHobby.create!(user_id: user_twentysix.id, hobby_id: hobby_sample_two.id)

UserHobby.create!(user_id: user_twentyseven.id, hobby_id: hobby_sample_one.id)
UserHobby.create!(user_id: user_twentyseven.id, hobby_id: hobby_sample_two.id)
UserHobby.create!(user_id: user_twentyseven.id, hobby_id: hobby_sample_three.id)
UserHobby.create!(user_id: user_twentyseven.id, hobby_id: hobby_sample_four.id)

UserHobby.create!(user_id: user_twentyeight.id, hobby_id: hobby_sample_five.id)
UserHobby.create!(user_id: user_twentyeight.id, hobby_id: hobby_sample_six.id)
UserHobby.create!(user_id: user_twentyeight.id, hobby_id: hobby_sample_seven.id)
UserHobby.create!(user_id: user_twentyeight.id, hobby_id: hobby_sample_eight.id)

UserHobby.create!(user_id: user_twentynine.id, hobby_id: hobby_sample_nine.id)
UserHobby.create!(user_id: user_twentynine.id, hobby_id: hobby_sample_ten.id)

UserHobby.create!(user_id: user_thirty.id, hobby_id: hobby_sample_ten.id)
UserHobby.create!(user_id: user_thirty.id, hobby_id: hobby_sample_two.id)

puts "seeding completed"
