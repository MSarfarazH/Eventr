# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mohammad = User.create(name:"Mohammad", age:25, bio:"Hello der", username: "moham", password: "password")
mike = User.create(name: "Mike", age: 29, bio: "Learning to code, one day at a time", username: "marcher", password: "password")
john = User.create(name: "John", age: 20, bio: "Test test test test", username: "john", password: "password")


dec = Event.create(title: "Decadence", time: Time.new(2021, 12, 31, 16, 00), details: "NYE Bash in Denver at Mile High Stadium")
dec = Event.create(title: "Decadence", time: Time.new(2020, 12, 31, 16, 00), details: "NYE Bash in Denver at Mile High Stadium")
dec = Event.create(title: "Decadence", time: Time.new(2019, 12, 31, 16, 00), details: "NYE Bash in Denver at Mile High Stadium")
dec = Event.create(title: "Decadence", time: Time.new(2018, 12, 31, 16, 00), details: "NYE Bash in Denver at Mile High Stadium")

# time: Time.new(2018, 12, 31, 16, 00)
                # yr   m    d   h   min  h + 6



