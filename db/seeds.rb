# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: 'example@example.com', password: 'password')
user.entries = Entry.create([
  {title: "Death", body: "My young brother asked me what happens after we die. I told him we get buried under a bunch of dirt and worms eat our bodies. I guess I should have told him the truth--that most of us go to Hell and burn eternally--but I didn't want to upset him."},
  {title: "Painting", body: "I don't know about you, but I enjoy watching paint dry. I imagine that the wet paint is a big freshwater lake that is the only source of water for some tiny cities by the lake. As the lake gets drier, the population gets more desperate, and sometimes there are water riots. Once there was a big fire and everyone died."},
  {title: "Teachers", body: "Often, when I am reading a good book, I stop and thank my teacher. That is, I used to, until she got an unlisted number."},
  {title: "Geology", body: "If you ever drop your keys into a river of molten lava, let'em go, because, man, they're gone."},
  {title: "Ecology", body: "If trees could scream, would we be so cavalier about cutting them down? We might, if they screamed all the time, for no good reason."},
  {title: "Giving", body: "To me, it's a good idea to always carry two sacks of something when you walk around. That way, if anybody says, 'Hey, can you give me a hand?' You can say, 'Sorry, got these sacks.'"},
  {title: "Laughter", body: 'One thing kids like is to be tricked. For instance, I was going to take my nephew to Disneyland, but instead I drove him to an old burned-out warehouse. "Oh no," I said, "Disneyland burned down." He cried and cried, but I think that deep down he thought it was a pretty good joke. I started to drive over to the real Disneyland, but it was getting pretty late.'},
  {title: "Faces", body: "The face of a child can say it all, especially the mouth part of the face."},
  {title: "Generations", body: "I believe in making the world safe for our children, but not our children's children, because I don't think children should be having sex."},
  {title: "God", body: 'If a kid asks where rain comes from, I think a cute thing to tell him is, "God is crying." And if he asks why God is crying, another cute thing to tell him is, "Probably because of something you did.'},
  {title: "Fire", body: "If you ever catch on fire, try to avoid seeing yourself in the mirror, because I bet that's what REALLY throws you into a panic."},
  {title: "Math", body: "Instead of having answers on a math test, they should just call them impressions, and if you got a different impression, so what, can't we all be brothers?"},
  {title: "Mankind", body: "Maybe in order to understand mankind we have to look at that word itself. MANKIND. Basically, it's made up of two separate words 'mank' and 'ind.' What do these words mean? It's a mystery and that's why so is mankind."},
  {title: "Clowns", body: "To me, clowns aren't funny. In fact, they're kinda scary. I've wondered where this started and I think it goes back to the time I went to the circus and a clown killed my dad."}
  ])
