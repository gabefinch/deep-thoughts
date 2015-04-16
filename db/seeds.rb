# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: 'example@example.com', password: 'password', phone: 5032084223)
user.entries = Entry.create([
  {title: "Teachers", body: "Often, when I am reading a good book, I stop and thank my teacher. That is, I used to, until she got an unlisted number."},
  {title: "Geology", body: "If you ever drop your keys into a river of molten lava, let'em go, because, man, they're gone."},
  {title: "Ecology", body: "If trees could scream, would we be so cavalier about cutting them down? We might, if they screamed all the time, for no good reason."},
  {title: "Giving", body: "To me, it's a good idea to always carry two sacks of something when you walk around. That way, if anybody says, 'Hey, can you give me a hand?' You can say, 'Sorry, got these sacks.'"},
  {title: "Laughter", body: 'One thing kids like is to be tricked. For instance, I was going to take my nephew to Disneyland, but instead I drove him to an old burned-out warehouse. "Oh no," I said, "Disneyland burned down." He cried and cried, but I think that deep down he thought it was a pretty good joke. I started to drive over to the real Disneyland, but it was getting pretty late.'},
  {title: "Generations", body: "I believe in making the world safe for our children, but not our children's children, because I don't think children should be having sex."},
  {title: "Fire", body: "If you ever catch on fire, try to avoid seeing yourself in the mirror, because I bet that's what REALLY throws you into a panic."},
  {title: "Invention", body: "Probably the earliest fly swatters were nothing more than some sort of striking surface attached to the end of a long stick."},
  {title: "Imagination", body: "I can picture in my mind a world without war, a world without hate. And I can picture us attacking that world, because they'd never expect it."},
  {title: "Eros", body: "If you get invited to your first orgy, don't just show up nude.That's a common mistake. You have to let nudity 'happen.'"},
  {title: "Security", body: "Most of the time it was probably real bad being stuck down in a dungeon. But some days, when there was a bad storm outside, you'd look out your little window and think, 'Boy, I'm glad I'm not out in that.''"},
  {title: "Parties", body: "Here's a good thing to do if you go to a party and you don't know anybody: First take out the garbage. Then go around and collect any extra garbage that people might have, like a crumpled napkin, and take that out too. Pretty soon people will want to meet the busy garbage guy."},
  {title: "Life", body: "As the light changed from red to green to yellow and back to red again, I sat there thinking about life. Was it nothing more than a bunch of honking and yelling? Sometimes it seemed that way."},
  {title: "Mankind", body: "Maybe in order to understand mankind we have to look at that word itself. MANKIND. Basically, it's made up of two separate words 'mank' and 'ind.' What do these words mean? It's a mystery and that's why so is mankind."},
  {title: "Clowns", body: "To me, clowns aren't funny. In fact, they're kinda scary. I've wondered where this started and I think it goes back to the time I went to the circus and a clown killed my dad."}
  ])
