# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ApplicationRecord.transaction do

  User.destroy_all

  # Users
  demoUser = User.create!(name: "Guest User", email: "guest@demo.com", password: "watpassword")
  user1 = User.create!(name: "Rachel Roth", email: "raven@azarath.io", password: "nevermore")
  user2 = User.create!(name: "Lissa Dragomir", email: "spirit@vacademy.edu", password: "element")
  user3 = User.create!(name: "Draco Malfoy", email: "ferret@slytherin.io", password: "myfatherwillhearaboutthis")
  user4 = User.create!(name: "Zoey Redbird", email: "nyx_night@hon.edu", password: "chosen")
  user5 = User.create!(name: "Viviene De G", email: "creator@mediumrare.com", password: "mediumrare")
  user6 = User.create!(name: "Kakashi Hatake", email: "sensei7@konoha.org", password: "copyninja")
end
 