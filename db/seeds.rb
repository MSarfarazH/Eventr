# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mohammad = User.create(first_name:"Mohammad", last_name: "Hussain", age:25, bio:"Hello der", username: "moham", password: "password")
mike = User.create(first_name: "Mike", last_name: "Archer", age: 29, bio: "Learning to code, one day at a time", username: "marcher", password: "password")
john = User.create(first_name: "John", last_name: "Doe", age: 20, bio: "Test test test test", username: "johnboy27", password: "password")
john = User.create(first_name: "Stephen", last_name: "Anderson", age: 26, bio: "Fastest coder this side of the Mississippi.", username: "theflash", password: "password")
john = User.create(first_name: "John", last_name: "Lonetree", age: 25, bio: "The Sherriff. Korean American game enthusiast", username: "thesherriff2", password: "password")
john = User.create(first_name: "Marcus", last_name: "Siegel", age: 23, bio: "The 'Kris Kirkpatric' of Brother Sports. ATX based guitarist", username: "siegelverse", password: "password")
john = User.create(first_name: "Ben", last_name: "Looper", age: 24, bio: "I eat 3 eggs every day. No haircuts since 2019.", username: "ben10", password: "password")
john = User.create(first_name: "Alex", last_name: "Mata", age: 24, bio: "Dungeon master extraordinaire, music and beer enthusiast", username: "snazzyshirts", password: "password")
john = User.create(first_name: "Jake", last_name: "Squier", age: 18, bio: "BRUH", username: "pogchamp", password: "password")
john = User.create(first_name: "Raul", last_name: "Sanchez", age: 26, bio: "Lead instructor, leading the way with great hair.", username: "thecrispiest", password: "password")
john = User.create(first_name: "Joe", last_name: "Burks", age: 29, bio: "Flatiron coach, avid golfer and hater of the Cowboys.", username: "golfgod", password: "password")
john = User.create(first_name: "Steven", last_name: "Nguyen", age: 28, bio: "Flatiron coach, all I do is Nguyen.", username: "nguyener", password: "password")

dec = Event.create(title: "Decadence", time: Time.new(2021, 12, 31, 16, 00), details: "NYE Bash in Denver at Mile High Stadium", img_url: "https://s1.ticketm.net/dam/a/d00/d01d2af2-f201-4749-a0de-1bc07d3f2d00_1208671_TABLET_LANDSCAPE_LARGE_16_9.jpg")
dec = Event.create(title: "Decadence", time: Time.new(2020, 12, 31, 16, 00), details: "NYE Bash in Denver at Mile High Stadium", img_url: "https://www.thissongslaps.com/wp-content/uploads/2019/09/decadence-p1-cover-1000x600.jpg")
dec = Event.create(title: "Decadence", time: Time.new(2019, 12, 31, 16, 00), details: "NYE Bash in Denver at Mile High Stadium", img_url: "https://lh3.googleusercontent.com/proxy/d2YnH9l_8S_O8-hzXw3lySlh3bdLhE3mq_13vbdkJSPCOGbAG-zBIOgk6CJYdFww9Jun82d62RuNWShph3EAdZfk6-8OuQqfTi_Gc3C-Qehmq0g6Q4cHOc3RRUpKMgAZlUvhgGxyOlhaezMf5gU3WQMI3TrMAf-3AoD53hw")
dec = Event.create(title: "Second Presidential Debate 2020", time: Time.new(2020, 11, 15, 14, 00), details: "Joe Biden and Donald Trump go toe to toe in a heavyweight bout of old men screaming.", img_url: "https://www.nj.com/resizer/XBNOW70yDCC3HoJy2BcYYr3ci1c=/450x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/BWRBGVNMF5AEDJ3QAPRZP546YU.jpg")
dec = Event.create(title: "The Man With The Hair", time: Time.new(2020, 11, 18, 13, 30), details: "A one-man-play performed and written by Raul Sanchez. Raul takes you through his experiences as an up-and-coming full stack app developer with great hair.", img_url: "https://media-exp1.licdn.com/dms/image/C5603AQETTzaQZrdNBg/profile-displayphoto-shrink_800_800/0?e=1606953600&v=beta&t=brUGD8vZT4_jJSO7d1YGypAtmy-b9G77GCqSF1N6pXs")
dec = Event.create(title: "Lakers vs. Heat", time: Time.new(2020, 9, 30, 13, 00), details: "Game 1 of the NBA Finals, Miami Heat vs Los Angelas Lakers", img_url: "https://i.guim.co.uk/img/media/1800dbd3f61624fbe35f9f9924acd994cbc174cc/0_68_3154_1911/master/3154.jpg?width=445&quality=85&auto=format&fit=max&s=321be97b8a1e3ec40b8b89439ba66085")
dec = Event.create(title: "Lakers vs. Heat", time: Time.new(2020, 10, 2, 13, 30), details: "Game 2 of the NBA Finals, Miami Heat vs Los Angelas Lakers", img_url: "https://i.guim.co.uk/img/media/1800dbd3f61624fbe35f9f9924acd994cbc174cc/0_68_3154_1911/master/3154.jpg?width=445&quality=85&auto=format&fit=max&s=321be97b8a1e3ec40b8b89439ba66085")
dec = Event.create(title: "Lakers vs. Heat", time: Time.new(2020, 10, 4, 13, 00), details: "Game 3 of the NBA Finals, Miami Heat vs Los Angelas Lakers", img_url: "https://i.guim.co.uk/img/media/1800dbd3f61624fbe35f9f9924acd994cbc174cc/0_68_3154_1911/master/3154.jpg?width=445&quality=85&auto=format&fit=max&s=321be97b8a1e3ec40b8b89439ba66085")
dec = Event.create(title: "Lakers vs. Heat", time: Time.new(2020, 10, 6, 13, 30), details: "Game 4 of the NBA Finals, Miami Heat vs Los Angelas Lakers", img_url: "https://i.guim.co.uk/img/media/1800dbd3f61624fbe35f9f9924acd994cbc174cc/0_68_3154_1911/master/3154.jpg?width=445&quality=85&auto=format&fit=max&s=321be97b8a1e3ec40b8b89439ba66085")
dec = Event.create(title: "Decadence", time: Time.new(2021, 12, 31, 16, 00), details: "NYE Bash in Denver at Mile High Stadium", img_url: "https://s1.ticketm.net/dam/a/d00/d01d2af2-f201-4749-a0de-1bc07d3f2d00_1208671_TABLET_LANDSCAPE_LARGE_16_9.jpg")
Event.create(title: "Bonnaroo", time: Time.new(2021, 9, 2, 04, 00), details: "Thousands Of Happy Campers. Hundreds Acres of Tennessee Nature. 150+ Epic Performances.", img_url: "https://www.telegraphlocal.com/wp-content/uploads/2020/01/1.-main-facebooktwitter-8fc90cd4.png")
Event.create(title: "Coachella", time: Time.new(2020, 10, 16, 8, 00), details: "The Coachella Valley Music and Arts Festival is an annual music and arts festival held at the Empire Polo Club in Indio, California, in the Coachella Valley in the Colorado Desert.", img_url: "https://consequenceofsound.net/wp-content/uploads/2019/06/Coachella-2020.png?w=427")
Event.create(title: "TED Talk: A.I.", time: Time.new(2020, 12, 1, 12, 00), details: "Elon Musk explains the dangers of AI and why it will kill us all and take our jobs.", img_url: "https://i.ytimg.com/vi/H15uuDMqDK0/maxresdefault.jpg")



# time: Time.new(2018, 12, 31, 16, 00)
                # yr   m    d   h   min  h + 6



