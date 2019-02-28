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
  user1 = User.create!(name: "Lissa Redbird", email: "spirit@element.org", password: "vampireacademy")
  user2 = User.create!(name: "Zoey Aether", email: "night@nyx.io", password: "houseofnight")
  user3 = User.create!(name: "Nicolas Flamel", email: "philosopher@alchemy.io", password: "harrypotter")
  user4 = User.create!(name: "Raven Dragomir", email: "nevermore@trigon.com", password: "edgarapoe")
  user5 = User.create!(name: "Viviene De G", email: "creator@mediumrare.com", password: "mediumrare")
  user6 = User.create!(name: "Lancelot du Lac", email: "knight@roundtable.org", password: "kingarthur")
end
 